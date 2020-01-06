Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24D0130C1A
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TxpdDO15MsA4UT7UVUshy4sMjw/kSLcVvT7IsU4rriQ=; b=Zvj3kB9yegVd4b
	y00t2wOwBjHrYKXPf4Cy4k8BH5igvPWmeuLD4Lnp2OT91ssGKLLQyYCKpK5C2pT0r65uT/pXoiO3K
	nBt75M5M8OLB0+WfaUWAcGXJQXziu+46GdbJBgX8LRTw/OAfDTc8jsQbPpNS1F2PixIcvs7MD05Tr
	6S8+PPqww/RyRP5mHt9gE3fH9s+UtVpKhSHBItubpW0XUMsJjPHlyeYC/QE+gWeOTDV1uJSJXMyOP
	+od9vdzAVbkJ4tX+eeurHIEUIcEICo2fvTzO11PUR9yhzpPHYamiUnRw6slNV1DCIGQXcdoMLm5jp
	pqn/DdhZCr9UQA0/BBuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIB3-0001R7-5O; Mon, 06 Jan 2020 02:31:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIAt-0001QE-NF
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:31:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id b9so26147230pgk.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I7WBsFKah2NJwsDci+pjAczGICBEq0SzjCogF9C7j84=;
 b=VHWuoYn9Ea7TWaVQLEZwYbfGtwZC/gHacnZ0u1KlxQONkfPkId2Ah47ZS+PDtWzEhp
 Ih09hUO0cZSO2RMfHNYyG4y7z9yer6CfePVmbkiKXSGZSCXcGlXzJyDcdrEbm2z2+me1
 ydG2oDwX7vwdwkKl4wEM4kXH+IU1nvg81cMouTdjCltQsPId3D2B4tP3Vrgihd3QZW4s
 hFbyEEusrei4JiUX8icfCXcpxiCZfmYxAfVyQz/TGkxuQT/LC2mPtGAAAbQphKrlTJFZ
 RqvrA4vI5IYiQKZ2JNfMiAna8i2q6PTs39XuFL4WQOxFiJwN+4j2xRmrdJM5HW6ZMNn8
 4mvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I7WBsFKah2NJwsDci+pjAczGICBEq0SzjCogF9C7j84=;
 b=sr2hX97coKftEz8LL+h8sY27ckVHFzdDdPAIS6vX9Wg2KXBGmZKuwdukmAYN6DYUVx
 mTdCxdid8fE34bQSjiVU9Y6YCVpzr35x57a7R6l4V/OfMbR9Ae1l79gEl6pewjXM9W+M
 OS3buRoMHq/lnRhFVkjwLMBFZfsetJIHGf4yhxJkW5cUy8RvJjLci6pu6nWsfJheTUXv
 YogSCP0/ZMCz1Y8s3Xyc3WO9sAWxg1ATPe3yTCszxfchlcwOIyb61qQMBOVpJuxmlL2M
 jxxQ7z9R2IwGUguYAZWoLLZeA4AJf2A80PXocGQnzpTJ1vdZzQAijOlLz1Kd4vv38mgJ
 TrJA==
X-Gm-Message-State: APjAAAU4vuOm9Bp8Qoakcry0y+lT3zLala9JV6zCXkuhCUqAVMq4C69P
 hioAZOU3PvX3Oz8xHUHgcQx+L1NtYF8=
X-Google-Smtp-Source: APXvYqxnYJUZyoGjPxEhbKecbWFUOXAT6/yqBghsLsI02csaJIJ628emyC3uAAURHdr9WGicWSkelg==
X-Received: by 2002:a63:1502:: with SMTP id v2mr107762901pgl.376.1578277882306; 
 Sun, 05 Jan 2020 18:31:22 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id q21sm73960609pff.105.2020.01.05.18.31.21
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:31:21 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:31:17 -0800
Message-Id: <20200106023120.170525-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183123_790991_5358F7B6 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/4] scripts/mkits.sh: replace echo -e with
 printf
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

echo flags are not POSIX. printf does the same with added \n.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/mkits.sh | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index 32a978e18d..def3d3c7c2 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -15,18 +15,18 @@
 #
 
 usage() {
-	echo "Usage: $(basename $0) -A arch -C comp -a addr -e entry" \
-		"-v version -k kernel [-D name -d dtb] -o its_file"
-	echo -e "\t-A ==> set architecture to 'arch'"
-	echo -e "\t-C ==> set compression type 'comp'"
-	echo -e "\t-c ==> set config name 'config'"
-	echo -e "\t-a ==> set load address to 'addr' (hex)"
-	echo -e "\t-e ==> set entry point to 'entry' (hex)"
-	echo -e "\t-v ==> set kernel version to 'version'"
-	echo -e "\t-k ==> include kernel image 'kernel'"
-	echo -e "\t-D ==> human friendly Device Tree Blob 'name'"
-	echo -e "\t-d ==> include Device Tree Blob 'dtb'"
-	echo -e "\t-o ==> create output file 'its_file'"
+	printf "Usage: %s -A arch -C comp -a addr -e entry -v version"\
+		 "-k kernel [-D name -d dtb] -o its_file" "$(basename $0)"
+	printf "\n\t-A ==> set architecture to 'arch'"
+	printf "\n\t-C ==> set compression type 'comp'"
+	printf "\n\t-c ==> set config name 'config'"
+	printf "\n\t-a ==> set load address to 'addr' (hex)"
+	printf "\n\t-e ==> set entry point to 'entry' (hex)"
+	printf "\n\t-v ==> set kernel version to 'version'"
+	printf "\n\t-k ==> include kernel image 'kernel'"
+	printf "\n\t-D ==> human friendly Device Tree Blob 'name'"
+	printf "\n\t-d ==> include Device Tree Blob 'dtb'"
+	printf "\n\t-o ==> create output file 'its_file'\n"
 	exit 1
 }
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
