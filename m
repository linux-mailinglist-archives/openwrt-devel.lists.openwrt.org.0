Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0050C9438
	for <lists+openwrt-devel@lfdr.de>; Thu,  3 Oct 2019 00:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1mNoBapuct97G72kV/WabmQkdDM7Bb1Jb5diNTv/6Go=; b=AVsPaao2yhw8B7
	nR2hvofDWH/I+WdRZX6sacCWJgHIepW39mmaLeZZfNNAjgLPwmKgi7+8EaAL98ZyF8u7CN0b+Ja6R
	7It6Kt+PdaCtww+ZXGU0sMapv8a/loWLSUyfMySCwzqVghhanZ1vAKnU+/8kvk/5hshm1dxIxMAdW
	rYCdMi14oVNCaKR5w6t27lsP+H+9eiRKXon0717IHrhDRhKNVMGOFdtVEHDqUAUaX2Q8EUTnxynYS
	bW5zyYcBfyX9ci60FbaSRYqUy5Qm35PmlDUi/dGzuoqq0xQEysOXRG4hF18q5b1xduBrfoLhJW7I6
	FZipw0QaIPH3eFDAqFMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFn08-0005f0-TH; Wed, 02 Oct 2019 22:21:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFn02-0005eY-JA
 for openwrt-devel@lists.openwrt.org; Wed, 02 Oct 2019 22:21:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id a2so368899pfo.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 02 Oct 2019 15:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=Nmal5ZorMRCBwuzs3qm9UtlOmLQQ5MjhDtwP/FdcQv4=;
 b=XJpJSCdGJP5nqTZQbytmIqmX16s7ji97w8Z98TgeZoFgxljfra6lkOYPax6oOVJD5Y
 9C4n3y9a7WdFD8MiJq2Z1BixLybTdCEoOAC/1X+azIP6gfkklTjk2mNadDtINt3d/aRF
 etgZjGDx55L/f6CJzRibyWMEY92bWZLDn/r176bhiuz8UXphdsUSrx1YHnpy17V8cUia
 UZA9PF832Bka4IjdtRcD1RUVxdc9YPxXO2FiYdgZ+VLFriKBUnSxn8pMX+8dtQvYq3xo
 dLlNlhqDIAf3GMaQ8W660+oqmp00McCUcAYuDnWEJcuutIU/xjbj8lOXfU/f0AqQPqQC
 KR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Nmal5ZorMRCBwuzs3qm9UtlOmLQQ5MjhDtwP/FdcQv4=;
 b=V2TlT+Uu12vmZCtelpytqHRWfQRRA5W6jFOLz0zvdJoS9L751jcZxQ1/6Ljfv6GKop
 TqmEDMMO5UfnFtFQjEL/+AFVuNyY0nNjcmLbst/TtMN5RM1hFPu+Y0d5cs1DUIXMXZVC
 9RuPII5SUtfIo3S/wpSZjs/6iXhwVYUmhbCq6aU7RYxH9qcKT7Z8+A80Oc7nAj75aTo+
 4emnTdh9C/zMjdpQ6mmrMtS7UrQQCBI4/lYRWYU5V/W8BYD0Sn1ZFDBEx9oaqvdphfhM
 JpdyyTq1ObrFBuTo3EL4cqEEaw9k6JsjCyCnoSNL/a3M2DBkbBF9m4yTcUbEO5sBkx6f
 OMLQ==
X-Gm-Message-State: APjAAAWNYAu3YVoAQ5NYCG2lqT/abC2KwojU9nzxYt2CMV9RskhNd4+n
 e5FPZCZ1kZwdrnUJ8C1oVaH5dA1Yyt4=
X-Google-Smtp-Source: APXvYqxPkL9gkwH8H6tyMTqmCUBmwJGcIL6nfp/CPiGeW0uEDyI2DxVUN/tW4PVnaEdHcPVfI79Mlg==
X-Received: by 2002:a17:90a:a4c6:: with SMTP id
 l6mr7144833pjw.15.1570054893034; 
 Wed, 02 Oct 2019 15:21:33 -0700 (PDT)
Received: from tharvey.pdc.gateworks.com
 (68-189-91-139.static.snlo.ca.charter.com. [68.189.91.139])
 by smtp.gmail.com with ESMTPSA id v28sm364146pgn.17.2019.10.02.15.21.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 02 Oct 2019 15:21:32 -0700 (PDT)
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  2 Oct 2019 15:21:25 -0700
Message-Id: <1570054885-11705-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_152134_632367_3BEA318E 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] imx6: bootscript: enable UBI fastmap
 support
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UBI Fastmap support is stable in the 4.4 kernel so lets take
advantage of it to shave off 5-10 seconds of boot time.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 target/linux/imx6/image/bootscript-ventana | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/target/linux/imx6/image/bootscript-ventana b/target/linux/imx6/image/bootscript-ventana
index 941afb5..8451caf 100644
--- a/target/linux/imx6/image/bootscript-ventana
+++ b/target/linux/imx6/image/bootscript-ventana
@@ -1,4 +1,4 @@
-echo "Gateworks Ventana OpenWrt Boot script v1.01"
+echo "Gateworks Ventana OpenWrt Boot script v1.02"
 
 # set some defaults
 # set some defaults
@@ -51,6 +51,8 @@ if itest.s "x${dtype}" == "xnand" ; then
 	echo "mtdparts:${mtdparts}"
 	setenv fsload ubifsload
 	setenv root "ubi0:ubi ubi.mtd=2 rootfstype=squashfs,ubifs"
+	# enable UBI fastmap support
+	setenv bootargs "${bootargs} ubi.fm_autoconvert=1"
 else
 	echo "Booting from block device ${bootdev}..."
 	setenv fsload "${fs}load ${dtype} ${disk}:1"
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
