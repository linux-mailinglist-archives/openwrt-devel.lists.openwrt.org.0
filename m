Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3285B1F5137
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 11:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:Date:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=n3ra6pUiPMcZpydnO2tyeluuvc+LKvgFt3sTebJEpXk=; b=K3nmWK6qrJOwYK
	n4yfKzZL96TY7qOWTpfAhoc5zv/tGcgCbW3RtMpW0XwFM63Xij5sSk5mAmhEokSHWqzuNgkO2aMnF
	vRMNcQlIuN9n0Am2OyKoc40Pu2Gum1NcAsINFBfSyk14O2xeDd6ypJUvuOVWb4IEQtGrh451GdvUy
	4hC2XvmM2ramyVvVhBrYAUfLz8p9XtLmhLZnkrcXS2M3tuyi/ITp41WlFz/mKcFoZf+oJChmMBuZP
	nKgpLRCBfKRKQYFsa9ShJoZO0tKFm9wdiFsZgwj5KeuulGj/ZuYzcJ3HpM1QrIsVJ0R3aDRhiE+lx
	Poib8Yu1DM5AZ7wRyt+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jix7X-0002bg-Fh; Wed, 10 Jun 2020 09:34:07 +0000
To: openwrt-devel@lists.openwrt.org
Date: Wed, 10 Jun 2020 11:33:26 +0200
References: <20200610093326.18897-1-rdiezmail-openwrt.ref@yahoo.com>
MIME-Version: 1.0
Message-ID: <mailman.21997.1591781638.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "R. Diez via openwrt-devel" <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: "R. Diez" <rdiezmail-openwrt@yahoo.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] build: IS_TTY is now set according to GNU
 Make's MAKE_TERMOUT
Content-Type: multipart/mixed; boundary="===============5036878073642352777=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5036878073642352777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5036878073642352777==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic310-57.consmr.mail.ir2.yahoo.com ([77.238.177.30])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jix7M-0002YZ-3w
	for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 09:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1591781629; bh=6TTjbVoWfJAnrnRhU2u1rmVrbD3cM4c2FQf9ywAtFOI=; h=From:To:Cc:Subject:Date:References:From:Subject; b=Shk+GnzReR4X4daKd6MAHnIeuVLqlL/5qaM1/rc40w+VlIm5M+VvdFUMV8AyV3+0RJh3YCRvdTj/PcRiztMQbidZZ1wsGSYCOQsdhzaypmamDzdXgejpLF/GGrR9F71mSxK+M7YRR83IzyvQa+0jErL0Lh1Uc2mL9MGAy7opjAMP32xXkllIdcul7VxBWF5Oc3kDEySdyV0hr3R6qdq7tFnIGCXiYeO/8BhPVVlG1HoUiIBHZRmZh18y+AhpTeQDKdpgiiMVe4M4sMZNZ7JrAt/7ptp1eVnAaq1nquIUKvQB1Owf+8bL7rlmgGxOjzYfqVCOVTW/TVOj1zcyCrCaTw==
X-YMail-OSG: jTUNgeUVM1nmjqeIGWyJnGtCr9mKK8qtnUNvrQ9M7SnkWPyHqBSIIDKCB21QO9K
 1KGrabkG9BkeHKI8PvSi0fsPf9R9YQy3V5qsoB45eIYK8kxkxCfdaz79Jr8uC7icltD_28.UVW1W
 mw.KHFvCcZAjOlThmQgFKOcT8pZAjpjB07bUkttn5a7uAGa9OLLuywnrYuwRJxHfuEQVnvzOry1D
 3c2JpL0jH7Wpen0NlSBTuyQzT5peEFsJgT8RE_P0SBgbaPfWNokzkAXdQOwLWhZhh3p5NZXb1O_c
 ZvwtS6pTcaY_NybR8Z7Uh3d6sRIFiLdXx9PVWt4xiPa8V4mTKGeScp_ZYo5TLQHnJBdSsv6M57To
 smSK2C_O4b.Io1H9TH_ZtE9_ipqHkt6DHz6ginKQ_laEUp14iuwLjePddYCAfn_78gbBn3QcucKa
 hlgAPejjscHUgwAunsSQ4WL70f6d_eFe.kLQTOSYPHxzS1wd4cWvCacrgVf773eCptM25XL6WWtN
 egQ0HVUcgoUraET0Rzzy8D2VL_RN1UQV.I5r84mrqB_VlU9WCTbSXi3_W_q7ETTxOG9rmJXrzdII
 XxBM8pcpr.3uut0jgwnvEgFxFsoCSnvmpmmVBUXEu3a7DTxc9lAT16roNXVNg_HFhAkDCFILydvW
 2vk_g6pqmRUsP8fpsGMb4iy8Fcntz.gqi2GG62QUxhI6npzhBO66wXZOCeKfgBduPcN5CyybNfKC
 BChriocN0BDnH5MAMd3gOR51Ifoq.psJRMn6g24fw3DFrDW0TlTCI3KUUmBSGQXa_RiKIpZXdCAv
 OxvzO8zrI10YK36egSkt4Sh0ch0iee6zUOuXmsb5Vhgc79iOiOue7mWgUkMcaja3AjtCy56lzHsB
 ESz_0P_u.JYXfF_XsyKKf4cn1NGsgV48Be5RY_zHWzmq4akREmet0_pHheYnDKIDcvIW6TIdIhT9
 .18bG3mfH4cTBllWPz1d96Qov.zjkVXpl9prU_V4hBSA4L9UnG3LFMRPcJDOXG3tZxmJikNEiHgG
 ZIUO1FhPzOJhQuAHBFrbTFa.Dy22but7czj2ASkDo5M0WX1M42OiXZKvVJRDJFVeH4mTmZ1ND.O2
 RFAOAMn6QwZfigcbegskMdsjVi88XEkzVVq7CJj59eHts68uRR0NXYg7_VoU5OLyZq9yZqlXYmcu
 oOlE1pnpMbc.WsXelx3mTph5C1THddS8_w_py3E7VA6AZx.aTDEE3624o2I.0X5v0VpStCZrNdii
 Vp5l0wzw2cfmQ8mZbrqcJYxx2t0k5I3CcHM.9QqD_axYBUmnPP1iEPotVZW7QnuvEu_Jp8k6oUD9
 KCjE1oOu6IQrCS.lThTlrA5qvW6.VgETWMKNrvOi..a.tkPqZlHms3NUsoPyBE6P92BvIOKhap8e
 HY51TvjX_QpALqKlRBpZwuzbtOTP6EC_rbfsVnj8DU1U-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.ir2.yahoo.com with HTTP; Wed, 10 Jun 2020 09:33:49 +0000
Received: by smtp425.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 375ecc2acb762800bd5a5fe5df771d87;
          Wed, 10 Jun 2020 09:33:48 +0000 (UTC)
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
To: openwrt-devel@lists.openwrt.org
Cc: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Subject: [PATCH] build: IS_TTY is now set according to GNU Make's MAKE_TERMOUT
Date: Wed, 10 Jun 2020 11:33:26 +0200
Message-Id: <20200610093326.18897-1-rdiezmail-openwrt@yahoo.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <20200610093326.18897-1-rdiezmail-openwrt.ref@yahoo.com>
Content-Length: 686
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_023356_289960_04B41D03 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [77.238.177.30 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [77.238.177.30 listed in wl.mailspike.net]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rdiezmail-openwrt[at]yahoo.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different

Fixes: FS#2086
The logic for IS_TTY was broken, because it was testing stdin
instead of stdout.
MAKE_TERMOUT was introduced in GNU Make version 4.1 (05 Oct 2014),
so it should be available everywhere nowadays.

Signed-off-by: R. Diez <rdiezmail-openwrt@yahoo.com>
---
 include/toplevel.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/toplevel.mk b/include/toplevel.mk
index 5cf93ce7ef..a9c503db61 100644
--- a/include/toplevel.mk
+++ b/include/toplevel.mk
@@ -8,7 +8,7 @@
 
 PREP_MK= OPENWRT_BUILD= QUIET=0
 
-export IS_TTY=$(shell tty -s && echo 1 || echo 0)
+export IS_TTY=$(if $(MAKE_TERMOUT),1,0)
 
 include $(TOPDIR)/include/verbose.mk
 
-- 
2.27.0



--===============5036878073642352777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5036878073642352777==--
