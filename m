Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F766109405
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ug53776yp2mGdf6UCg6BlP3gQaLUvvJaQjjo5mnGFS4=; b=FxQOBQSYLocbSB0/FHqcMJjWPY
	yH6fgHspbntMwo1FQ35kRvB7i1ooZIPA60bJwq7Of0a+9BUh+NTqq/32QbV1pRmQSTln3nqBUhJbb
	olouNdCO5fhpJEJL+hPK8IhEDU9UiP1Whw4FkiMSvWvKiJDNKYQgxpRabGOFpPQRVR3NSV74jcYeC
	zmfFLcDm7V5vNlhjOD7xVZQqABOZbOe0kfM3Vr9EoMTU5F5Hys1dOi71+47Ar8HNCA+1B1qAvR8MH
	jMmPHwDcmfW2eGS/mD8sJ6LquioLd/XazweLfJlzKvMqmLo2gtUdIecZWH+M+DmsqNXk76ek28gi4
	ZimWGufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJo4-00071r-Qc; Mon, 25 Nov 2019 19:13:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJnr-00070i-Tl
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id 3so7810697pfb.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Dv9yB7jUZl8tkyhmCmyFxGaA2NbNIFgnQKOiKUSJVMM=;
 b=p7yhJwUuIZkjXRTfXtf70jP18catSq6MtBWCSak166OllRBmbRl94KVkcvDwR2e2ip
 1DrfGDud3QKWnQ++l1H5SRioUjVi6h+deb+hgE5DEgd70+ASRBfUCqr2f2Y4tp83dQxy
 ZMEsQb/drbeuKaYAKxsdnPTmiVqaXu45QAPPgKJIDwsY2liP52M7I+i6ODf6YewmL/Oq
 yrE+v0dV/fQ2+bk3OO880CllL2TzH2Kwh2gkdQerJiUYAJghRv1xYPlmmws+6QgfC6nd
 ndxDw2oAnidmm1PaySBYURuXoNlcIN15VyIzxsmblnN0g0KZTcWSBwQGFNRdBwmvewAX
 V5ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dv9yB7jUZl8tkyhmCmyFxGaA2NbNIFgnQKOiKUSJVMM=;
 b=LQat6tW+H+AlUuvfehdcB1QSIVeyUx0Le/VgKvw2P8hZoaY2dFpPgET1vIWLHy/Cko
 vLM21JxqW4WYEl2tuxMcBtAQtYK6TUK1mGCXxCKXEqaPig8LGdvUGzfzcu3Tz1xbVE6e
 GFlkfHeIKoy4GHplhdJ6awrKUDXFLGCbono4ffGfzblIflsRuJ6nBIsALhIfZ2i6M8G8
 bMF9x4eeVBSwdmTfTnKzxzJxAF5u7X4vEJQrfCryOu0qFK8uhsHjnINnOR/Ws/I2nDdJ
 A9cxL+qLk6I47MY157TvO4l76rYHpZ0asFlPGXZkUmLAnmMXOsm2oXU+d9u409P2zzuP
 f38A==
X-Gm-Message-State: APjAAAVQFnUiFDXtQ8h+/BUwM8GRwzS5cgKcIP+eVItl2X3/UvsE4umX
 YhAvKMWcx3qe7HvcBTJzxawwIJ/6nHg=
X-Google-Smtp-Source: APXvYqxom8+NM1boUDULPboEjJIwxCRtjK4JcXxMSKgEXuAayhglXCEkVAXGNCoeKpjs5PbE/38EZA==
X-Received: by 2002:a63:ed58:: with SMTP id m24mr128245pgk.111.1574709222761; 
 Mon, 25 Nov 2019 11:13:42 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.42
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:42 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:25 -0800
Message-Id: <20191125191340.5980-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111343_980783_D758966F 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
