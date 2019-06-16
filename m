Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90E047603
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 19:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8aS2Gsit7wEWKtg0CNBJf8exAaAvgYUKi5p+tx7O1k=; b=iF1hxf5v37TSHF
	sLkO4+l4Ie64aosuxQ7WnDIy7YKh9ifQyaEqgeITYeRl7u4Z7WQXkmECx2bpnQtCrRa/nqp2zNpba
	rTs73By79ouQYJqTZ+4t4D7JjdNkJYE2vUp3Hbd+eCCmLF3ioiDPtGklSthz3qxatmcVs+RQzrb2T
	vwCMrnefOFG+VUYsIAehb0gl0wRUaPNLU1yZ+H5EQr9ln/Nxjyt2Pew/kjhJ+Z+0n/y6U04GLhQkm
	1CpxOWsxIJv1dz7G3ZE/07Vd/zVtqoqhmp0Lt/t+lzIKNwtWKXcJWtmYaOpqwjCBAsu55kYSFDM4P
	x/GtyFoBst9YHX2Ysong==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcYWi-0000lz-KM; Sun, 16 Jun 2019 17:01:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcYWZ-0000kY-12
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 17:01:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so6873599wms.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 10:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3zq47opeiIQxJUjfEODi2P8fKbCBPjxIQY5LWHV3k/8=;
 b=hzerkjbwMcHLdDCklrmADAP3cLDnk3ElXRZ7/zg2lm0yYCbJ5lrWnFyPKuD1v+hYEv
 ZKgRT5IK1fKWQyUO7nxgvyOAaOYeiFFeGDEUoeZj2vz1Djyek/cZm5UBLgS+wqcWebKj
 tDWqA6eyIe76Dfp5AvuzTCW15jxrq7SiUqSN9i36b8gEPbsGllONuKMD0WNSPJ7YDP6r
 4EqaWpexTlNIJT+385cNxDXPwbc16uidR88iea7XHzgAyN+CiRSOS+iAKvsh/lQ25EUg
 BG+T2Npmavpue8Ng5AqROEROFJQURzZEIb+YtK5BbF6dn51TQMFyK4ZHBcWbdeMzlRYk
 8Phg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3zq47opeiIQxJUjfEODi2P8fKbCBPjxIQY5LWHV3k/8=;
 b=cjeWilEUEJLyvvWj0dMub/pITmr0ee3RpJ3nwpbdBrsedarvrv1akYqKjJ3BDJ2NEP
 cYhxpn7OLLIPYBZC0la9EV61id4FUQ7gg7/hZHlmsWA9j8/6LJFbRbxZU3vAn6ZEjYg/
 T3xPrv5+nAOyMPXkDPrBUqDjT6wl4LwG6R2/HQst/N9pF+bv+opCRFTRzxKe0oxxOo7S
 H+lgp2MMVWeZKlhPMVsZUBoIR+lPHdQN2sM1SzNNzpnda8dheJf3kmlJYg+O/6ItAZgo
 2elWnoiEtP8zdFdoW1ZJUkPZ1i/Kf/piafaT06zmoIQI/vosy8ZzCVjncWvvs3EFnsut
 6BJA==
X-Gm-Message-State: APjAAAWZVxBTyk6RBwi84gaZHvP42X6By1PytgmInUhvkyXcOWqbXPj0
 7rR3luTsqguu/UTmCvKob4kFmK34GAg=
X-Google-Smtp-Source: APXvYqxbxOkA1aCYYSEmNBQnhH7oijdE7EEp5TbM5br7zLdaIKQWDAeYZnKz0lPwfJK7tOi2QDGiwA==
X-Received: by 2002:a1c:a7ca:: with SMTP id
 q193mr16837184wme.150.1560704455957; 
 Sun, 16 Jun 2019 10:00:55 -0700 (PDT)
Received: from Ansuel-XPS.localdomain (93-44-105-95.ip96.fastwebnet.it.
 [93.44.105.95])
 by smtp.googlemail.com with ESMTPSA id l8sm28907931wrg.40.2019.06.16.10.00.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 10:00:55 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 16 Jun 2019 19:00:48 +0200
Message-Id: <20190616170050.27126-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190616170050.27126-1-ansuelsmth@gmail.com>
References: <20190616170050.27126-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_100059_073451_0C07D9FF 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [fstools PATCH: 2/4] libblkid-tiny: increment label
 size to 256
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
Cc: Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Btrfs max label lenght is 255. Increment the blkid_struct_probe struct to respect this new max value.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 libblkid-tiny/libblkid-tiny.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/libblkid-tiny/libblkid-tiny.h b/libblkid-tiny/libblkid-tiny.h
index 193d926..419d5db 100644
--- a/libblkid-tiny/libblkid-tiny.h
+++ b/libblkid-tiny/libblkid-tiny.h
@@ -56,7 +56,7 @@ struct blkid_struct_probe
 	int	err;
 	char	dev[32];
 	char	uuid[64];
-	char	label[64];
+	char	label[256];
 	char	version[64];
 };
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
