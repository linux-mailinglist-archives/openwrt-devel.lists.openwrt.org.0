Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CA31FD39A
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 19:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=diYUIA+izrfLOKelX7qHUAHkvAdvtlaRbAAmA286Fnw=; b=sV1hZgATJVJTEd
	mIgGnjI09JnqmnV6ZZMhGwwQ85knlZh0cmjSp0XrSwrizCI4lIuBqHFVUWBtQ1tv10GWCMF7EeQA0
	rHpqCKWBaOmdsdJ/d4LoM+aVA8i8qiM4TIZf1H9cZ0nJ6T7be1x4SoQSF8WnsFadLrayTjASztREa
	V1990B2k0HAAXncfxDpo5LbaQA8sgaatkEeEX7JnDLDFq6PG4U2J31SJOCfyobfJ1nQSYQWoIKyj9
	tS9CTFcKvEn1iQFU+AcSExHD7rk4Ia2a/FnBXD/LePZKitPzhXTg+QMEQMZdYJa3lgLlk0pbxxahn
	6A0LICDa67WU1Xj7NTwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlc0K-0005C8-2r; Wed, 17 Jun 2020 17:37:40 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlc0E-0005Be-Lf
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 17:37:36 +0000
Received: by mail-qk1-x743.google.com with SMTP id n11so2830054qkn.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 10:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=47hb8zMyaHkp9M3j1DzcTh0uPbnR+ax8ySLAL3m//jE=;
 b=WEJLHNojH+gIbRUVmplp2YpS1ThvIhEYuq+38/JES2nASQuI7ZjQRSldGdAI6703KP
 SH/C24kXbJZzDAbzyge4RXqXWJnpL1+SBKTajUXOidWh106CKTPrgBiXVlLEdSyjdJ/S
 gQEEDvRIN9HxuX0WhrZo6ODwGblVxgIKP2H4m927+INubsnWvGu8TFz2z2sYT3P3OFGS
 HqSFFYtvif8dN1bwuP4AZKhyiYJXdLE8cbHlUFd/lu6cobM3fDVz63d+DtmcmScc9Ypd
 r9shEx9W2LFQnO55tlBgXjxilf3/MEU5J1AL4VYM/1ZZ2eKW60XYtpaNlyU284kBEciS
 bHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=47hb8zMyaHkp9M3j1DzcTh0uPbnR+ax8ySLAL3m//jE=;
 b=dgRuJ2WFpdgywCIEDLwpP/D2g3aHBkJTUTSZ2DfXfra7zw/ihMgV8Y8XV/8qdDF2/q
 u5mngYVHhcUWj6MegRpOKp1QrZs5towZNYKt/KbjWrfDQYw1bSSZMOose7OhnKsUBe3e
 phJHlaYk9+0Csi5ExMAHa68xolbJgByS9uIqWLDmVwtT8Ac5vkEEeo+uCCfE52Yh82dU
 l7CnWUpIbXbDmHXNu9UHFz/gspv6gSRpP7JqMJ3kapox1PE6uLQ4lFlCYo0U/3RfMQFr
 J9eDAx4mRlWx2B9e7mn7wKGW4tDhOJ19CyrNNF7Ep3F+EEeV6Cy9ZjtrXVCtWwvWORN3
 qAMQ==
X-Gm-Message-State: AOAM530O2Z5CUrnP7FOR+AqB174I1kXeLUuYDp52R6RIzNErUI1sasle
 c2Zgrri5NKf4A2rFDROemlkCZ0T3EgO4
X-Google-Smtp-Source: ABdhPJyzv8JI5yNdNChSUFA7d3sNVfQwU5WDinOHtpxQQimPk57fNFENP1SeQ3RDeoK8aFqrSwQVnw==
X-Received: by 2002:a37:67c7:: with SMTP id
 b190mr25905949qkc.228.1592415452496; 
 Wed, 17 Jun 2020 10:37:32 -0700 (PDT)
Received: from presler.lan (a85-139-207-71.cpe.netcabo.pt. [85.139.207.71])
 by smtp.gmail.com with ESMTPSA id u27sm534697qkm.121.2020.06.17.10.37.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 10:37:31 -0700 (PDT)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jun 2020 18:35:11 +0100
Message-Id: <20200617173510.124628-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_103734_710913_05E45661 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [RFC PATCH] mvebu: compile the kernel in Thumb-2
 mode for ARMv7 targets
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
Cc: freifunk@adrianschmutzler.de, Rui Salvaterra <rsalvaterra@gmail.com>,
 hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

(Sending as RFC due to the note below.)

The Thumb-2 instruction set generates denser code, allowing for more efficient
use of the cache and consequently higher execution performance.

NOTE: This requires enabling a linker workaround to avoid the emission of
R_ARM_THM_JUMP11 relocations [1] in modules, which the kernel doesn't support.
Since this effectively implies -fno-optimize-sibling-calls [2], we're generating
suboptimal code. While compat modules load and run correctly without this
workaround, WireGuard fails to load with an unknown relocation 102 error.

[1] https://static.docs.arm.com/ihi0044/e/IHI0044E_aaelf.pdf (page 28)
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/arm/Makefile?h=linux-5.4.y#n129

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 target/linux/mvebu/cortexa9/config-default | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 target/linux/mvebu/cortexa9/config-default

diff --git a/target/linux/mvebu/cortexa9/config-default b/target/linux/mvebu/cortexa9/config-default
new file mode 100644
index 0000000000..6aff77fda7
--- /dev/null
+++ b/target/linux/mvebu/cortexa9/config-default
@@ -0,0 +1,2 @@
+CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11=y
+CONFIG_THUMB2_KERNEL=y
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
