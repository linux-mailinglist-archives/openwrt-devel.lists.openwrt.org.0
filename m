Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1BB1F51C9
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 12:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:Date:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=oGOZSRC1/o1Pze3FhSnCuH4woQm7qhHFX6Cp8a72hwU=; b=mN+LFCHwT29klm
	WGAhhR1qLi0UA0FzMj7PMHA4UdVUbc+9oPJ+rYzG5DItoz1HTo0PyUtVKKv+d8nR6cq0x3V5/Dwh9
	zMF3ig2Cun/5Vj2JJSAKiC5k9voa4T/mYYgfF+iRkmY40tOlIcOcHwCJXqJHCsQbHms4wZeXRPvNE
	W/U0lkUocgGyFZN62LDzC1vpKXDXNVy1qSC/JHIqzzDsO4f7SmdxBAPz/MGh3GFJQBXRppuV3UlyO
	DZxHrbWGaSoHatwXp4H+9nL5Fh97d1bfcJEodaYdvkreZftoBKCzlTlPD1q/9qJ2YwCfv63H8F6H9
	+ALJTfuIe+fbxbgq/zuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixZc-0005kt-4a; Wed, 10 Jun 2020 10:03:08 +0000
To: openwrt-devel@lists.openwrt.org
Date: Wed, 10 Jun 2020 12:02:23 +0200
References: <20200610100223.22950-1-rdiezmail-openwrt.ref@yahoo.com>
MIME-Version: 1.0
Message-ID: <mailman.22006.1591783382.2542.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] [PATCH] build: do not hard-code IS_TTY in script
 scripts/feeds
Content-Type: multipart/mixed; boundary="===============1095134651616775236=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1095134651616775236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1095134651616775236==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic302-20.consmr.mail.ir2.yahoo.com ([87.248.110.83])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixZT-0005kJ-Uv
	for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 10:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1591783375; bh=ZMdKfDUiYz8tpJOsJbkpa3Lh+esEeInR+A0ikEAv7vs=; h=From:To:Cc:Subject:Date:References:From:Subject; b=KqEwVcYYbEOA8SEFFaMxYVXzn7Iq9M/NahfFjC8sQgl9fGZZQjXr9H8g7p4u0CWe98H3ohxMoA8NC6Wb+ygXxCLh6oFhT1ioZrhJaVyzMUfrPZBVRsRhIg9BtLpthn3G9RqzNeEZfLCwlCqHUjCrrdfkLuBXHmQifu5z01vyBiIxs2ImzkPUVvwqg9K66ikzltsb3k8fBh3iXUN/Q68yK4oq8l3sZrw+gEg2cQAufx9x9miQsYsMk7DTJUBEx1dyw/sutU4frYGuaI4ZFtTUKRD/WWGKwn5dzt9L76dcVyAHF1aj6JjaIPIMgyzK/WnG7kCUo32AaVTgN9gHMp9G1w==
X-YMail-OSG: BI2WndMVM1nrCD0sgcW2QyCM.62AB6hQ9bHPq_fwHCA4Uv8n86xF8QuzKQv2DKl
 UDxuQG0ZS8Gw03Xfk7Ao_.mMe0kQsZHnk.94bucN4UnuQpGFucVLNYp9St_IociyPBdMAqquCRS6
 NbfxlhwNf.S5YrhANG_9tQgaWMZoi3vpIXI_ZXZKIwzz31nZvbKnPKa.sH3.gw8uXbszd8KFsGvF
 .LK6dqg7cexLBf9zpi3MDH0oLfwpkAnumvonNxBRzxohEb9iWYDqq49YyUz.O56OaElr1sIk_gUZ
 ctAiqsrRiqAgdCTmzD3qObVF78z_2jskg75WFisSARVUCExoNMIV3QEjQzdbhbCTjB7uscZXRoeI
 Nw7ufHcYSJvL_lQmf09lnJphWBV7ZJZw07wVD8iHYKsiUYiS3tm7XNW77RylR8c8hboFb66.z4UT
 FDUuV_Oq1nUv4IcbC8KCWKqh1Rs02BKE5OtjzEoh_QaIWRrYKupjPAqX8Qcj6pXQ5RLRJKI8JblK
 .afBbZs.0hB7Axy.W9Cg9Ia9ESfCYSXgWrWMDpTr.ACYJcR6CcSLOUXMS96czCwUL0fMaL3Jvo_p
 wI.pYB2uSqxGn885Sa7fuFxIq3AuDbOescEANlZtmvbeQj6QOHGlIjrmk0l.4OGYKaU2sgYNmJWu
 Abu.pBQ7Ll9nwKKhmf8w5VlJtf7uvOzMwUfkb6oCDJuaYXSkIr6K1OuPUhpCfCY3uAaGIUvhupkw
 o6EJobwj5BagXhUYBfz6rSPaPp7g79INxfdUzKJ4itgYA22WxK7qnpUxtREeZ6IkkrDrbT6x7set
 UQqfoCQYJ_npShZRV1UBHDYhIrGVN_DaOZtrjlIoDz4ndRX4JhjHeDnK1fHGmlXu0.MOve6DogTx
 O7X5EAY_18ec7VvPjT9LSeBPfPQj.zTqTfsulMherrZGvS8Kct3vhaG2qDtaeM5L4AW4JCceDbeW
 VWUALeOyW.sDiFAGV2dV00OEDCosLg5KQhJC74A6i8htTsT2z6fsYLMJgANxW2DiGMfTPTy5i4Yy
 0Hmb7nRCQgege0fGg5nfuRpPkkMRZk53o7t_A1sHbKuxQhvaD_p4GpVVxpYHpwtp3nR23_C4M8xU
 y6_ZaUcqXewodZchhf6y9nx7fOf1TcYh8nN8vPMXI7FUoimWAIb3MFt1sR5JpJICNvHhn9iFhSI9
 bYMtmtIUKxgaZGs2iNP0ETbeET9N.gLnYmQNJvhA.5oJFN6WNAwjmyBRod9_DClpqcyvSEK6g5zs
 PpCgj79K6.h8I3BGJN7R..yKRaycbygR0bO7nkffnrAA4VYlOoyoWxTT_QYuuIVbxqE3onZ4M.L2
 REFoLELErlAWATVKvtmtMS.5chbEW4V439ypkAy3H8uxZjbrwGX5cs2e_Q1UTNToTpXdkUQe2Y31
 Qs_0eCscRRPux3gdyG6XefxWbrNSNzfYXCCyzQS6XB0FI
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.ir2.yahoo.com with HTTP; Wed, 10 Jun 2020 10:02:55 +0000
Received: by smtp422.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 7bb751def0cd00daa053e19465d4ff77;
          Wed, 10 Jun 2020 10:02:53 +0000 (UTC)
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
To: openwrt-devel@lists.openwrt.org
Cc: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Subject: [PATCH] build: do not hard-code IS_TTY in script scripts/feeds
Date: Wed, 10 Jun 2020 12:02:23 +0200
Message-Id: <20200610100223.22950-1-rdiezmail-openwrt@yahoo.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <20200610100223.22950-1-rdiezmail-openwrt.ref@yahoo.com>
Content-Length: 1577
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_030300_146332_AFBE7DE5 
X-CRM114-Status: UNSURE (   4.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [87.248.110.83 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ruben10post[at]yahoo.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [87.248.110.83 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different

The script was previously assuming that stdin is always a TTY.
Now it actually checks.

Signed-off-by: R. Diez <rdiezmail-openwrt@yahoo.com>
---
 scripts/feeds | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/scripts/feeds b/scripts/feeds
index 69ab60278a..56a690e4a7 100755
--- a/scripts/feeds
+++ b/scripts/feeds
@@ -128,8 +128,11 @@ sub update_index($)
 	-d "./feeds/$name.tmp/info" or mkdir "./feeds/$name.tmp/info" or return 1;
 
 	system("$mk -s prepare-mk OPENWRT_BUILD= TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
-	system("$mk -s -f include/scan.mk IS_TTY=1 SCAN_TARGET=\"packageinfo\" SCAN_DIR=\"feeds/$name\" SCAN_NAME=\"package\" SCAN_DEPTH=5 SCAN_EXTRA=\"\" TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
-	system("$mk -s -f include/scan.mk IS_TTY=1 SCAN_TARGET=\"targetinfo\" SCAN_DIR=\"feeds/$name\" SCAN_NAME=\"target\" SCAN_DEPTH=5 SCAN_EXTRA=\"\" SCAN_MAKEOPTS=\"TARGET_BUILD=1\" TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
+
+	my $is_tty = -t STDOUT ? 1 : 0;
+	system("$mk -s -f include/scan.mk IS_TTY=$is_tty SCAN_TARGET=\"packageinfo\" SCAN_DIR=\"feeds/$name\" SCAN_NAME=\"package\" SCAN_DEPTH=5 SCAN_EXTRA=\"\" TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
+	system("$mk -s -f include/scan.mk IS_TTY=$is_tty SCAN_TARGET=\"targetinfo\" SCAN_DIR=\"feeds/$name\" SCAN_NAME=\"target\" SCAN_DEPTH=5 SCAN_EXTRA=\"\" SCAN_MAKEOPTS=\"TARGET_BUILD=1\" TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
+
 	system("ln -sf $name.tmp/.packageinfo ./feeds/$name.index");
 	system("ln -sf $name.tmp/.targetinfo ./feeds/$name.targetindex");
 
-- 
2.27.0



--===============1095134651616775236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1095134651616775236==--
