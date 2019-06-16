Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7821847604
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 19:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j5gnowZ/5IP21Wh8s25yuCeqc2u9U3LHdvLQg9hAGLI=; b=oAIlbwS1DApDWm
	l7nm+BxjD3fFqohCd3OBEltCkbgP+THooSVF1NNSxz45UTv+MpfbuJKzN9QRooefveGrI1iRvva3d
	y//UUtYpXw5xMIn3fGpHV+jszeUsOpD++YRJcDXQoSDDPc7N3y67m0O4WZsVA9+iJoShOmGRBHvvT
	6fai2Gy5mXdV9Riw9NvaJ+DDdy8tJcU8PmonZnCsk9ADoWuBZuNw4hqcmPu5A2L2o1MNiLhty0bjs
	ZslmKKWlzz7Gw2qWa97whM5Ad93bQedVozYQFOoueUZUYejIMYlvg15lI05IInrKMH/3xGfB2Pymu
	Cv+bqzbcVrgIQGNtZwaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcYWz-0000yO-Qr; Sun, 16 Jun 2019 17:01:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcYWZ-0000kX-0D
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 17:01:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so6873957wma.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 10:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=erKkf/w811lJSmKP4GsC1d5s7eCLv7jYP7Jzh0KhnZo=;
 b=GyFWQifuGlbR3vAsVe8f+uBX1trZ5C4C69JjNS8VmSaxMTRCOtIBpRlFs22mMpaHVj
 BFPL8u9eL5mNW04AchXpEBk1MB3iU8484Js7fOHpYmBKhAjhDdwwuwJuDsGiMPbokt2U
 vEajPQKKaergsKrbUZtnsCZLUEt9iC1E1OZ0FBY0CxMPKIgTwobPYX77PUoHnXGmV7Yz
 +nfmOo+klWO5AaAwvtj9kOtfF1SEiqyhX8XXSPsvYN4C1kRyt3bB9Uvmp1lV++AwZp8d
 UppOKY4AceOFhOt9JKXufAXZm8JEJvW0XEHUK7CCN6FPfvPm1M8iT4Sx2SElr0uuuAys
 S2Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=erKkf/w811lJSmKP4GsC1d5s7eCLv7jYP7Jzh0KhnZo=;
 b=SDoENuW51bkdPtOSDisSg8QTYfGUlIGbSeWd5O0NpxYfyD+XpnZMmd94ANAJ97WUkk
 uPv9Uo5xP2SfiK2enMZ3BHDEkABGE9owe9bvwfbMx9a86vq94XpauWyaonGhxzia7fed
 i5x/y9ap3K7mORMx0V3GorHupcTSvERSLP6tbLGIV3g+5YDy2svdrMemM+G37Y8lkRAV
 gR9aOmrLuP76qyYBs2WNRPsXcoto5RJ/nsZeAQo2vk8ihJY8BGdGAF930/7+VdQqnaHR
 WcI0j7nw7lWFZ69wTY7PL8xdfnvR57nS5AKIORv9jRO+q1s/a0d4vh7c1/VinQSJ0Imn
 sAvA==
X-Gm-Message-State: APjAAAVKSSk6TOBxQok6CA5lD2xUVaJYvYW4HHdAqFg/GG77j2C5C0jn
 Q3ZINDW5yw25C62CRQYCg3pWJM9Z57A=
X-Google-Smtp-Source: APXvYqw004u91WoHlX/DXXoFcPJvzSeeFRenjaPzMfO2HmIr1DlbXz37TaGAXuWXFwKLGC8MtGYiPA==
X-Received: by 2002:a1c:2dc2:: with SMTP id t185mr15885241wmt.52.1560704455034; 
 Sun, 16 Jun 2019 10:00:55 -0700 (PDT)
Received: from Ansuel-XPS.localdomain (93-44-105-95.ip96.fastwebnet.it.
 [93.44.105.95])
 by smtp.googlemail.com with ESMTPSA id l8sm28907931wrg.40.2019.06.16.10.00.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 10:00:54 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 16 Jun 2019 19:00:47 +0200
Message-Id: <20190616170050.27126-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_100059_075284_F4D90330 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Subject: [OpenWrt-Devel] [fstools PATCH: 1/4] libblkid-tiny: fix wrong btrfs
 label length
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

Btrfs label length is 256 included the termination char ( '\0' ) as the real max length is 255 (less than 256 from the wiki).

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 libblkid-tiny/btrfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/libblkid-tiny/btrfs.c b/libblkid-tiny/btrfs.c
index 7ce3dff..cf33db5 100644
--- a/libblkid-tiny/btrfs.c
+++ b/libblkid-tiny/btrfs.c
@@ -70,7 +70,7 @@ static int probe_btrfs(blkid_probe pr, const struct blkid_idmag *mag)
 	if (*bfs->label)
 		blkid_probe_set_label(pr,
 				(unsigned char *) bfs->label,
-				sizeof(bfs->label));
+				sizeof(bfs->label) - 1);
 
 	blkid_probe_set_uuid(pr, bfs->fsid);
 	blkid_probe_set_uuid_as(pr, bfs->dev_item.uuid, "UUID_SUB");
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
