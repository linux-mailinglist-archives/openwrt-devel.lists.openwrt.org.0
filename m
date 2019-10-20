Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A52EDDCF5
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 08:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N7y/VU6IdGp7FCFm+Rp2MFYzL6+04ffASWoBsSt7he4=; b=M35SVpreAbgypX
	HEEv6TFJt1tpo1RaQxkYy0dvmHHEHDthRDiHcIH+uPytPZx7FC0ZcEZyb88yV5AsI23A9v1/4Ud7X
	vTfkLw3SWjNW5v03E2dZ4ASY8f3wZFumvvFIexUygA5IwkzDbu/KsV0dG4UWENKD4wspHt2mi2Uov
	GjQk6rzrS2vKN955sKIrchrDPf1hE2d+88q/7+C+J97d3PMb8lPq2dg5Er1u0A2jJbwkeMwS3HYh5
	h4wxLmn7HoWskj87KNyRbSfb4yi7koC/6VLqs7Hex5slWM9QTkokFWt2egL7CJnKVItxLtajZfj8A
	6jDGr2jcPLabzzIfSsMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM4Hy-0005li-Hz; Sun, 20 Oct 2019 06:02:02 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM4Hs-0005lG-GJ
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 06:01:58 +0000
Received: by mail-pl1-x636.google.com with SMTP id q15so4902818pll.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 19 Oct 2019 23:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=VujOJRFEetSbZoTzQkxDa/RTqWu51URluWJrtR/i2I4=;
 b=JZZQU9amwxRB8YMlGtfMRLRdJy9dj4Gs5h8YYQ8uMCr73cBcfs5GdLwU/VHkDcydWT
 hDu5+T74+02eCJ9OM5lJXyWnu0kjWzSx1SMV7zGOO6Mc6cflGRvdpFasBpoZUyE74ygx
 UdmkSLeusm4NoVkm3mX3oGcrrrqO4hdhqYDjwj32cV5vgyE27Y+5Y3fcO7r2dP+BVuXg
 K4dpac1qdyKrSKz6E8gwTmaBGiCYLMcLkxJM0TQQVEmeSD6MMquAmXurLm21eWszNUpm
 9dnPJyjnASvWbALznvqDGn7keh8sjk5zSjGXg98ui3Euzxz191mRAYbDI+JtXosuiap7
 8RYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VujOJRFEetSbZoTzQkxDa/RTqWu51URluWJrtR/i2I4=;
 b=XOrVKIKjPxdv1P9a6JQCaz0P9st9O0lXHj9sBilaWaB7hyKKGqKQgFeKtbuXdosC+z
 lHCdO26bsk1hso+S7Rqs/e1U2LA0dxj1HDCDHaZMNV4S+AABur1mRjniQxS6JD4s75Pv
 LwTgWU2pYVbBw+eQFfNQKxUBGanPkROTQ/4KuYFgLNtZwgf6c5wJLj4hDb38juJLbxZx
 FTcQKDelxFJJnKgOrm/qGsHOqU4icwyRxytxgznfgbHatHjuTm+udEy1zlHSLMY9mVT9
 UHeDQp37uXnI1s4rEZZ8NV99Dd7Di/xEz6gxeEfjWN9zo3Uw2KVXaeF0Ju3n7Ex2PsJ4
 Hz7Q==
X-Gm-Message-State: APjAAAU3nH09b+O+KJ3utNaLNCn1n3eth/0ZnMqSD548VqSlxhxWfsi8
 gAP1ZCP5K17mP0cTmPk0mk29wkNX
X-Google-Smtp-Source: APXvYqyIFlgjem8sYPBTR3dB9BJ9w3sdpFmVtDs9gD+gHxsyJYBjHK5qjGEJi875fMYirf3AkW+Lxg==
X-Received: by 2002:a17:902:d705:: with SMTP id
 w5mr17476428ply.142.1571551314887; 
 Sat, 19 Oct 2019 23:01:54 -0700 (PDT)
Received: from GOLIATH.lan (167-179-160-129.a7b3a0.bne.nbn.aussiebb.net.
 [167.179.160.129])
 by smtp.gmail.com with ESMTPSA id q20sm12967123pfl.79.2019.10.19.23.01.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 23:01:54 -0700 (PDT)
From: Gerard Ryan <g.m0n3y.2503@gmail.com>
X-Google-Original-From: Gerard Ryan <G.M0N3Y.2503@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 20 Oct 2019 16:01:11 +1000
Message-Id: <20191020060112.25323-1-G.M0N3Y.2503@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_230156_567358_B3802040 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (g.m0n3y.2503[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (g.m0n3y.2503[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [OpenWrt-Devel V2 1/2] kmodloader: added -v arg to
 modeprobe
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
Cc: Gerard Ryan <G.M0N3Y.2503@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is primarily to satiate the usage by docker/libnetwork.

Signed-off-by: Gerard Ryan <G.M0N3Y.2503@gmail.com>
---
Compile tested: x86_x64, Hyper-V, OpenWrt Master
Run tested: x86_x64, Hyper-V, OpenWrt Master

You can also find this patch on GitHub if you prefer.
https://github.com/G-M0N3Y-2503/openwrt-ubox-mirror/tree/feature_extend_modprobe_options

Since https://patchwork.ozlabs.org/patch/1175792/ I adjusted some whitespace to indent more consistently and split the patch by the args they implement.

 kmodloader.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/kmodloader.c b/kmodloader.c
index 422c895..07b6700 100644
--- a/kmodloader.c
+++ b/kmodloader.c
@@ -678,7 +678,10 @@ static int print_insmod_usage(void)

 static int print_modprobe_usage(void)
 {
-	ULOG_INFO("Usage:\n\tmodprobe [-q] filename\n");
+	ULOG_INFO(
+		"Usage:\n"
+		"\tmodprobe [-q] [-v] filename\n"
+	);

 	return -1;
 }
@@ -855,14 +858,18 @@ static int main_modprobe(int argc, char **argv)
 	struct module *m;
 	char *name;
 	char *mod = NULL;
+	int log_level = LOG_WARNING;
 	int opt;
 	bool quiet = false;

-	while ((opt = getopt(argc, argv, "q")) != -1 ) {
+	while ((opt = getopt(argc, argv, "qv")) != -1 ) {
 		switch (opt) {
 			case 'q': /* shhhh! */
 				quiet = true;
 				break;
+			case 'v':
+				log_level = LOG_DEBUG;
+				break;
 			default: /* '?' */
 				return print_modprobe_usage();
 				break;
@@ -872,6 +879,9 @@ static int main_modprobe(int argc, char **argv)
 	if (optind >= argc)
 		return print_modprobe_usage(); /* expected module after options */

+	/* after print_modprobe_usage() so it won't be filtered out */
+	ulog_threshold(log_level);
+
 	mod = argv[optind];

 	if (scan_module_folders())
--
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
