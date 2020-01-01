Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CC212E0F3
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 00:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n64oBw/A0B4eoqUQnS24qA0d/ayjvToAVLX6MQJaQuQ=; b=JgFaJLMrXAzNhx
	mYEvXU9h1wicd7p6aGjW4zLs5h2cz41IKPPsDJ4EQO1EATNPBDt+1030bQxym6Q4s5EiWoEzdO1cZ
	k26HZEffMTiymBKAS/zEV1R7IKkbBHxMX7Nj9k1DUYfog3E2nRZ/UN4+mnYIYG3rp0JKOT3auHJYP
	DNguyWgC97ZB8lxdXBynQ1g2/eYv4LoN/SijgDTq5QGUKELZ2muL8rpNM7APfhu4eND0IDQhZ/r9X
	ApNmX4SPtr1Y63WgrRUS3NBpRXc6QskY7LEIRyPPOWBe4pnsKG3qcKhRY7uALDZGAaNd3sxSPNMGn
	ESmiA16sR1UBIGAIf2iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imn03-0006jL-86; Wed, 01 Jan 2020 23:01:59 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1immzw-0006ic-3L
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 23:01:53 +0000
Received: by mail-pg1-x531.google.com with SMTP id r11so21075568pgf.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 15:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ewr18oHZ++K7KJRHb+cEtBU9KTDEC7lK34oG9UJ6gIM=;
 b=uAPM1YeatpiMb4qdFwgkMlikceeqqpVz65gMvmNCvc9KLNfHmPjF8TiLxwOwxDYtOO
 RinJdqWhqPa/zy6l637DarTMebTUAA8jaoC56AOU9LkQSTQEa9b7hVLB4n/QA6I2Z28I
 PXXOF1drw/KvBRw5hRuBtNPM6QrYd4JyUOEkm8E6s101bvwZV0eY9H5kzpx/O7TuIUXi
 kVYA+ALfkLUpmV5EvN3wdzc/xNf5uCq14P2bjccFmLRjwAwDPPi4ld7nN6DH8ba+GvYN
 bHAqhSMPvbhL4DUQvcFCMU0UWXvWbyh+uxQ3yS+n8gJ9VVFsYGSPDCOhb1qUaVZfSTO6
 29rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ewr18oHZ++K7KJRHb+cEtBU9KTDEC7lK34oG9UJ6gIM=;
 b=XMDdf9UyuBYo+pIdw4zZZ9KZYKQ/z2hzhAQQeMTzDqjlcemQYLJCq7qbGprAgZ95lQ
 FWpf8Jr/ZUAio2D8uDlUzmczCVYBYndynPpR+W0NIYMrbohWaUQ/PyH3hysR9VvYRv6u
 /e0hMWBcFuFIvjcZLJuQYx/9H69ghqpj6Dw4fZ4rjxtejtr+yjzIOAm+2/5c4Haw1d5T
 7O4echhUFAoN1d1ecL8DN9mcu5W50Sx6oc8tsRN4N4H7g5nbibbqZiZO0SfG9g/hC2xO
 bh3GOyP2ORiWdapwNAAwmVH/+5S3NsP2VnFhZL9JP0DVXfrABXK8Ba7mSY+kexOzpY+9
 APiw==
X-Gm-Message-State: APjAAAVrt4DgFA0c5KAI0tcDq3tKoNElo/I+PWmL/nvhyrmDzA5tCwQC
 R4aiD88GRQEDGFcQS6sU9sUGDf6JYi0=
X-Google-Smtp-Source: APXvYqwqG8nJati83kxS7vETWgTKx90i98TY3QIgti0cINvsa5o/QTCPSqMJS+GaoM7YJ+HOZ5i4nQ==
X-Received: by 2002:a62:3892:: with SMTP id
 f140mr83614957pfa.190.1577919711105; 
 Wed, 01 Jan 2020 15:01:51 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id e12sm8512067pjs.3.2020.01.01.15.01.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 15:01:50 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Jan 2020 15:01:47 -0800
Message-Id: <20200101230148.25053-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_150152_165403_B376B724 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2 1/2] scripts/gen_image_generic.sh: Replace
 -o with ||
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

-o is not well defined.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Switched to -ne instead of ! -eq
 scripts/gen_image_generic.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 2c57d56f07..814d81d014 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,10 +1,10 @@
 #!/usr/bin/env bash
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
-[ $# == 5 -o $# == 6 ] || {
+if [ $# -ne 5 ] || [ $# -ne 6 ]; then
     echo "SYNTAX: $0 <file> <kernel size> <kernel directory> <rootfs size> <rootfs image> [<align>]"
     exit 1
-}
+fi
 
 OUTPUT="$1"
 KERNELSIZE="$2"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
