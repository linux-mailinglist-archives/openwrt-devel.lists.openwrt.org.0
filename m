Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D767C6998F
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 19:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rk+KZMzvWVpAVqKEsI9xaq2zOoWu4Hluxiub2thppVk=; b=pjCPjhWr91hbey
	TTDNBjjH1r5NBc3xwQe99Lyn8Tyw7T6VOyF38JDEprRWX2vFXss/DaPY5zKq6ozmhU5wkP5hc4vHH
	m0xPtlZffih+Hpvyde2CepqXZqjZsougVrv03g9XaiMCP25Z0MjzTUhnQaFVtzDOQmtbLQGW6JAN+
	HEj7RVgLV77fkwZ5frv2MXwJ0m4jtFyv0MkeqkRMpqzMmlMga08bHIa9dQWbFPENT3FrCOTOVUdSq
	2piN0ApxscPOqdzH5pVSzazKn5CCifqj1YNY/hZ8PxyAdnpWbupxV9SKwC0B7aLPxTKjPc0lKN/XM
	Zs65G1lJo7RSTEY9MABA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4Tj-0000Lh-BK; Mon, 15 Jul 2019 17:09:31 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4Sm-0008JY-G4
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 17:08:34 +0000
Received: by mail-qt1-x842.google.com with SMTP id d17so16367501qtj.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 10:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6bhZn3D6z5dT8F040aPK2mwK85Kv4L7cfZoX2k6ma9c=;
 b=SWFAGVlAnCpLpHPoFRfqbVXWdSTgPleXJrAzw/antoVG+0/3KnO8hwk8ftiuHzoErK
 Bpq8smcJ1inmLEckd3ba6DvJaa9FmcHE7AyQ3F91SlgVw3kQ7LpBXrwD1SHGbJVXrYtE
 n5KmMUxVXuhgXTEFQLo1ooOr45DeGdWLsACCbmLgeXfY06TI+m8+lk7m37vwIDhmzPfa
 AdCEFMjXbHi6rzwmRri6v5DrH22oZU0x0kaFhjK18DLN70bTkcypINJSNueWK9yM08vN
 KUvCuIYm2f6+vObyxQHAtBtXvYC6zkIWm3zMd5oa79I/0AY+DTLQNjHx5+RyqJoC4zs8
 zHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6bhZn3D6z5dT8F040aPK2mwK85Kv4L7cfZoX2k6ma9c=;
 b=kFo2WSy/zV43ruiPrj8YDKfo5kNLK8RDt8s8Q34pIAcMI6SJ9J0lU6Xdx2noozkS72
 TN5K9odWWfv9ahVHBkadIjqOa6q4mTSYU265fnr14RjRChc7rNFcRlBlnZYj70L1FnIq
 YNIjbuL2qKfj4e8GzYOmMakonkrCiqJC0K5lwCFGlTYo3fG+eLEd4jwZ+gxafvTWSM4Q
 xl7/njGsfCd63aAsG6NeRWhueE79exC0bxGS/X/4+FwjQRbvOHpOd6jjfqV7obaRRI7p
 zVpz0S9rxRUZD24VRyE+LWesFnhOOUm8Xk+AsqKdPKayilvAnUGxJYtFbeVCwZRPFJrC
 LSWA==
X-Gm-Message-State: APjAAAVYxfLdBiphvi4tgls6ubne8x6QeAhLW7e3HBpfu/3W9byzH2en
 idemYqAHAZvwpwRJMGSNZdsyDUhu
X-Google-Smtp-Source: APXvYqxhZ/HI0DOD9JREUpOfcPqOd6A5FuOmaZyiv7oKrc1kHpBypnhsFbtqidKkyNvTPUxsVmJYBQ==
X-Received: by 2002:a0c:aff8:: with SMTP id t53mr20293123qvc.47.1563210511255; 
 Mon, 15 Jul 2019 10:08:31 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id z50sm9714081qtz.36.2019.07.15.10.08.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 10:08:30 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 14:08:00 -0300
Message-Id: <20190715170801.6785-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190715170801.6785-1-cotequeiroz@gmail.com>
References: <20190715170801.6785-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_100832_852643_F28B3CC1 
X-CRM114-Status: UNSURE (   4.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] target/toolchain/files/wrapper.sh:
 simplify 'case'
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Removed an eglibc remnant, and while at it, grouped all of the
TOOLCHAIN_PLATFORMs using the same FLAGS together.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/target/toolchain/files/wrapper.sh b/target/toolchain/files/wrapper.sh
index 2b760840d8..4452128382 100755
--- a/target/toolchain/files/wrapper.sh
+++ b/target/toolchain/files/wrapper.sh
@@ -56,15 +56,7 @@ fi
 # --dynamic-linker=$TOOLCHAIN_SYSROOT/lib/ld-uClibc.so.0 
 
 case $TOOLCHAIN_PLATFORM in
-   gnu|glibc|eglibc)
-	GCC_SYSROOT_FLAGS="--sysroot=$TOOLCHAIN_SYSROOT -Wl,-rpath=$TOOLCHAIN_SYSROOT/lib:$TOOLCHAIN_SYSROOT/usr/lib"
-	LD_SYSROOT_FLAGS="-rpath=$TOOLCHAIN_SYSROOT/lib:$TOOLCHAIN_SYSROOT/usr/lib"
-       ;;
-   uclibc)
-	GCC_SYSROOT_FLAGS="--sysroot=$TOOLCHAIN_SYSROOT -Wl,-rpath=$TOOLCHAIN_SYSROOT/lib:$TOOLCHAIN_SYSROOT/usr/lib"
-	LD_SYSROOT_FLAGS="-rpath=$TOOLCHAIN_SYSROOT/lib:$TOOLCHAIN_SYSROOT/usr/lib"
-       ;;
-   musl)
+   gnu|glibc|uclibc|musl)
 	GCC_SYSROOT_FLAGS="--sysroot=$TOOLCHAIN_SYSROOT -Wl,-rpath=$TOOLCHAIN_SYSROOT/lib:$TOOLCHAIN_SYSROOT/usr/lib"
 	LD_SYSROOT_FLAGS="-rpath=$TOOLCHAIN_SYSROOT/lib:$TOOLCHAIN_SYSROOT/usr/lib"
        ;;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
