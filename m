Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493B812A3CA
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 19:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AJFoJuHuLUWI2pXSffsvuTv7D2kaUKNueaFcbHilR9M=; b=AH2DSc0ga7gxip
	+tYs0yB8teAGr9x1mwEA5erLHYRWZIVGIdFyADSOwQUflcs4ny6MpbyJUZsEDkjVScvr48yF5wEBS
	sruY1cDP/BIaaNh1VyfqMGZPFhtoF+CTUpa6o2W0Nbw8Jz03YUOQQFZf8cb6+Upuxtk/Tf4O0baXZ
	eMbB7k0xmsfPW2hKaLL5ojAU6+EiAgsF38f7kpbfkVedQPmdUSwBMn++kQ00zfGznBsp1j2Y8efca
	mYyW80AV8PMcBtGiY9HU+MwfY082PMuJwIT24ARlz3Q6Ka3MY24UInUz3nbojdlI+O8sIdpqYdzpC
	DqbMOfr3EgUB3iTd3ceQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijoVr-00030m-DO; Tue, 24 Dec 2019 18:02:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijoVj-00030H-M5
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 18:02:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id x8so10676077pgk.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 10:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vskVOQAz7iz5hIj8oOHHi5zgHP6yaXCCMC1/XY0Zy6o=;
 b=A7tZ29oF82F2zwzyvuyh3t3uupzNDyk4BCHNLZ88bn5gmgaDd7HCtP+tVU8t5WOIQB
 6E7MOHurnj3LbLv+vhZzWTCqs5genO0zQQclimMpCUZQJRBGCFhlavW2PPa7RpCZ3xT5
 Pz84SOUPKd+FHD9yTaXeWXryfLXtbK8POLYYWRciD0ejpCvj1PzvTRa91iPW1wq2kKyC
 dnpRfhDJBI+Vp20c1L/0gqAmhlTLj47wabBgXS9uCWl/roeTeTOUepgD4Xl742QqWgf+
 CEowyTc+lqbEflF+XrKvDl+iV2LceiKi6ERQjCZJdDBI6dAWyJ14+lJhB55Z8qrr8LmQ
 5k3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vskVOQAz7iz5hIj8oOHHi5zgHP6yaXCCMC1/XY0Zy6o=;
 b=SU0yZBGcqGLi/xyYOIXP2iIWpXRhZ6WNfs8Y+4Lduh7VkFpLr976vHJaQkYuRZCAP2
 SKsWlSrPjL9KKJlK1qi6+lxxMeJS1enaiAX3gc+x0tff+KBJQ6qnN1Q4FDdjVA6sVuUY
 AemP6kiFQbwSYZdZhlKkrXniGcCFYyWIpfZ4znuPl8+DScZ2SpSRknywXv9y0DaryBHR
 BZg2Tzi49otfv+YKHLRmA3vL0LuIgnGf96luiRAhz4ORHyOchzE2zOfwiy2ZE9ie8C5a
 W7k8aYw5s0N4cFnUyGKzqYf9Eetk6pg+7iOuniNcVxMxDsqdoXqmcv85oYBEGtJ40vE4
 tdXw==
X-Gm-Message-State: APjAAAX1DpTg/dheJMALyjP3CfA3Hwb5KusoXgak8sLJ+CLk0wITREkV
 iAPRKFxsQ6W7LIFNqaBz07gL5m6eO6Y=
X-Google-Smtp-Source: APXvYqwPMoCCtsTM6YKbyLuiahNbQNrgfx73n4za4vTofC09Lr9BKIG3xjNEXthJ5IQ/sNFF1Le0Aw==
X-Received: by 2002:a63:3196:: with SMTP id
 x144mr38133933pgx.319.1577210542284; 
 Tue, 24 Dec 2019 10:02:22 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:4e0::36e9])
 by smtp.gmail.com with ESMTPSA id u23sm29590457pfm.29.2019.12.24.10.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 10:02:21 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Dec 2019 10:02:13 -0800
Message-Id: <20191224180213.3542623-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_100223_747090_932C0217 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raj.khem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Fixes
error: '__builtin_strcpy' offset 6 from the object at 'attr' is out of the bounds of referenced subobject 'name' with type 'uint8_t[0]' {aka 'unsigned char[0]'} at offset 6 [-Werror=array-bounds]

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 blobmsg.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/blobmsg.c b/blobmsg.c
index a860483..63fada8 100644
--- a/blobmsg.c
+++ b/blobmsg.c
@@ -195,7 +195,8 @@ blobmsg_new(struct blob_buf *buf, int type, const char *name, int payload_len, v
 	attr->id_len |= be32_to_cpu(BLOB_ATTR_EXTENDED);
 	hdr = blob_data(attr);
 	hdr->namelen = cpu_to_be16(namelen);
-	strcpy((char *) hdr->name, (const char *)name);
+	hdr->name[strlen((char*)hdr->name)] = '\0';
+	strncpy((char *) hdr->name, (const char *)name, strlen((char*)hdr->name));
 	pad_end = *data = blobmsg_data(attr);
 	pad_start = (char *) &hdr->name[namelen];
 	if (pad_start < pad_end)
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
