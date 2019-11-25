Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194641095B6
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ug53776yp2mGdf6UCg6BlP3gQaLUvvJaQjjo5mnGFS4=; b=HsU8FBzXnsd6wEZF8jrjYq0mcO
	dT3beDkJA7f2Cgf7FM8m9d+JywJ16z1unJcP4WNhWe0lQiuMvcw+2YK9dsytXLsm5EvORsve5/F+b
	9MnkiShMPEpKuFoo4CshN6v/tqHvzPUqE772C9WnBq1k/EkAcvG7/ukYexPc+3fwzqEjo31HLW2g2
	zO7SMozf9nATuazn4w7vMayzxFnpj7LY8d5vsX6TG2O/tepKUePTDb07bHhdGoWcSuv8raFjuDRAu
	6LtY7O5fVf7LNQVTWkCcsLJoe2/GJ5te/BtPK1tE83livBHBEo6Ggo+2zcDgqQPIXqRh+jrUpBLaq
	4J09azeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN6w-0006NT-Qa; Mon, 25 Nov 2019 22:45:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6Q-0005YY-R9
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so7193189plb.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Dv9yB7jUZl8tkyhmCmyFxGaA2NbNIFgnQKOiKUSJVMM=;
 b=VX/+8ZAvOktxGGstkX6Eo2oBytTEkG3FigV+hYmcl1BlqOAXSJEjXByVCsnMVIgOGy
 jYD6bUKdQsgpJkQYRFjI4NrP6p6VxcKfvaisy8GdZs4pzZipAUqgZNis4YopY2WVzt9f
 pOXollb9wXYqm77wbGVRn58QcVjQAknhdtxys8Zp1AqdQPnHwWK0Ru8oWV7D2wLwXaP4
 3j4MDkfx9BHFpz2clP1ncuu8PSvu01ZtHTsq9fNaIq02hLNekDYRwHy2FDssYkipIbKk
 6j6twNjJF3oZw8YqJqONQZuvI2W0bWc7c1+ZL0WeVEglltb9Ydb4KGrWgeLe2icczvFM
 QNKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dv9yB7jUZl8tkyhmCmyFxGaA2NbNIFgnQKOiKUSJVMM=;
 b=bLPJt33iDIUeD+hKATs8DAo0Iqu16/oyB9Cfdk3aW92dBTGbIVuO5BHlqWbbbjH0Km
 Im0iCHvbIPbIx3uZheGGhtTw4RzuLfwsf+45ragLXnwEqmY3eme9fF0cHa5g30tL7o8C
 ixiztJMBsE5aVE6hcgrhX1UZFDqWK1karR+mrC5c2B9dttB3eZQuROCJsRzokFydT8ms
 jltVUMo/i3n0Brj31RpkI80zs5O+vlrYjwo+8pUDQOZ+6+8STrtyUN9rw3rmki0A5HB7
 kkqBO/zalspKS5rcVR2RAvKLJTcH4fmxW6yraI3Xr+YtefHiXNz9JTyYFfGkxhvVylnu
 TILQ==
X-Gm-Message-State: APjAAAWgH256CIljGPq3QMyYTTOQ+PFaML7HUUzUIMt5+lqthRt1tRnn
 FQftA8BKHWlusq3epPyIMo1SmI3XslI=
X-Google-Smtp-Source: APXvYqyvEL1T9sOqHtDpCZM7+suJysrK7ZXgJj+JV86OVPI9KnjCXe0KKYFdnVyz+xbgTZa5unI0Bg==
X-Received: by 2002:a17:90b:3d3:: with SMTP id
 go19mr1986273pjb.78.1574721905456; 
 Mon, 25 Nov 2019 14:45:05 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.04
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:04 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:47 -0800
Message-Id: <20191125224502.266177-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144506_889968_EB186A15 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 02/17] gen_mvebu_sdcard_img.sh: Don't use
 format directly in printf
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

Enables proper checking. Matches printf behavior in C.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/mvebu/image/gen_mvebu_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index c93a2bd6e2..277c9377c1 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -41,7 +41,7 @@ if [ -n "$BOOTLOADER" ]; then
 fi
 
 # generate image file
-printf "Creating $OUTFILE from /dev/zero: "
+printf "Creating %s from /dev/zero: " "$OUTFILE"
 dd if=/dev/zero of="$OUTFILE" bs=512 count=1 >/dev/null
 printf "Done\n"
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
