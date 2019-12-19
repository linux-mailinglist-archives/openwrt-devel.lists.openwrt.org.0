Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066CE12706A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3wxliBkxbb73Knd7PMah5zT/gKc0XsNcRBbPt3arZ8=; b=XXKYnRhqP2Ozo0
	cPVVZXJoRJBxKrukH2A1jXWoBsMVuqhMc7hr+hWG4T9rN+CgloFbsmnrxORutJE63eftgeVgk9UBA
	zYYZg5iRI0LhjFuQ6r4ecEhTIhAEqW2Pb24+TMOTBroDQCVRfVJPr2cd1kuuuwmdeAGTXLYeIvpnw
	j2KtANJHkyqJF+wZkfjjl1XWpkWzqa3jmIf17u/6u1RVNm/Geowy98DbLa273IyUM2cnXDfUuFeMl
	e3QBfjh+vO30ksMET0UiiS1Ug3rk0hQlbCbR9haovuDZtxwNfb77zfde/Zyck8qc0fkIWn0uVfaNX
	oSAH+izElCkbhROUlvog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii41Y-00054r-FL; Thu, 19 Dec 2019 22:12:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41H-000528-0F
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:44 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3C20C4BB8;
 Thu, 19 Dec 2019 23:11:41 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id da4fa367;
 Thu, 19 Dec 2019 23:11:31 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:10 +0100
Message-Id: <20191219221125.22646-2-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141143_193167_6EC79BA6 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH ubus 01/16] cmake: enable extra compiler
 checks
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TGV0J3MgZW5mb3JjZSBhZGRpdGlvbmFsIGF1dG9tYXRpYyBjaGVja3MgZW5mb3JjZWQgYnkgdGhl
IGNvbXBpbGVyIGluCm9yZGVyIHRvIGNhdGNoIHBvc3NpYmxlIGVycm9ycyBkdXJpbmcgY29tcGls
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0K
IENNYWtlTGlzdHMudHh0IHwgOCArKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0NNYWtlTGlzdHMudHh0IGIvQ01ha2VM
aXN0cy50eHQKaW5kZXggZjhlZjRhYTU4Y2NmLi44NjZiM2FiNjAxNjggMTAwNjQ0Ci0tLSBhL0NN
YWtlTGlzdHMudHh0CisrKyBiL0NNYWtlTGlzdHMudHh0CkBAIC0xLDcgKzEsMTMgQEAKIGNtYWtl
X21pbmltdW1fcmVxdWlyZWQoVkVSU0lPTiAyLjYpCiAKIFBST0pFQ1QodWJ1cyBDKQotQUREX0RF
RklOSVRJT05TKC1PcyAtV2FsbCAtV2Vycm9yIC0tc3RkPWdudTk5IC1nMyAtV21pc3NpbmctZGVj
bGFyYXRpb25zKQorCitBRERfREVGSU5JVElPTlMoLVdhbGwgLVdlcnJvcikKK0lGKENNQUtFX0Nf
Q09NUElMRVJfVkVSU0lPTiBWRVJTSU9OX0dSRUFURVIgNikKKwlBRERfREVGSU5JVElPTlMoLVdl
eHRyYSAtV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uKQorCUFERF9ERUZJTklU
SU9OUygtV2Zvcm1hdCAtV2Vycm9yPWZvcm1hdC1zZWN1cml0eSAtV2Vycm9yPWZvcm1hdC1ub25s
aXRlcmFsKQorRU5ESUYoKQorQUREX0RFRklOSVRJT05TKC1PcyAtc3RkPWdudTk5IC1nMyAtV21p
c3NpbmctZGVjbGFyYXRpb25zIC1Xbm8tdW51c2VkLXBhcmFtZXRlcikKIAogT1BUSU9OKEJVSUxE
X0xVQSAiYnVpbGQgTHVhIHBsdWdpbiIgT04pCiBPUFRJT04oQlVJTERfRVhBTVBMRVMgImJ1aWxk
IGV4YW1wbGVzIiBPTikKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
