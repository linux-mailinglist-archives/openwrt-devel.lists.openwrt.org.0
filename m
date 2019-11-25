Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA79109406
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ULNx+QjY8p4REUNkKeWSIPZS4ChvS/BldZJhf9M4C5A=; b=RvChFH9tdtW0Ih
	xyBOmPCF4VfjdNwhlHHR17292CJjDvItZUA6HS822SYYePVoyZGUvrVKzo4WTJ7P28967seocLl68
	PeZne7a3wFbrS3WNI+CjL4BEMm3Q45i3p+OXItJqjpQ+GrfAs9QVailcVO2JecUPtYtvv8hORnUnC
	F6jSLwqnuXynH4YJX8cmrd6G2DdoSwhXAcBULl8iBfqRKB3ocfqfyexXWhZLuz2QGaPQl9+arZQym
	2p330+ffI4Usq5zoQH9hcQJ8XUaQJl7jN/jBryi1/eZaujDlBR+tX1UDQKPwC2EzM/ElkkAW74l4E
	REx/7qBAHaYHo5KMFBtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJoH-0007GT-Vd; Mon, 25 Nov 2019 19:14:10 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJnr-00070h-TZ
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:45 +0000
Received: by mail-pf1-x433.google.com with SMTP id q13so7838020pff.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i6zaHgUT7EOcQmTbtMOuxf4CZzo+RmMYt7bObICfNrY=;
 b=efS2ZVREjnnhYXU44auBThI2HoEV3DZXxeTnf+hrSI4Q/oDSn2wI5LxSOrqsDuownr
 HQxYuX7LYX9Iw8IxpGN+aVseYuvRa6jv9QFEME+E1xFEi5iTkqdz6PcqHYpxtzeB01yI
 hHLuO48ZZZolRnle8Is9SgYV0HQp/s/q50XPQx8OynxcdgwAmtFyZdl2Qp8QNeA/lGPc
 xaMSa0mnqhOiZVnbDOy5Wy7Txmybu7RoVN3D1XZx9qxZeAAgMEqInpvNgC3iabcoq7Eb
 lKuhaoAdlhXL08MRNxCHIAk1FniIAjOG5XfYb0Tl3sx3lFyNFguPvgk531Mc9bp4WG+9
 ds4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i6zaHgUT7EOcQmTbtMOuxf4CZzo+RmMYt7bObICfNrY=;
 b=JMMWwnUcL7jcWALCBPFY0sQa+BlC7GNQp99ldGbzQYstI9ghusZzzSbrTLKWsCA564
 DKb+Gd2U/cCoAQAJ+dB6L1L1XP3ZOGMkiYZvBMzguTIgBTT8neNqL53lzLAPOqB3eywe
 KXCGk/fmuheETfarLAtkfnnDqjsWpwuh+wpmMmxe36a3OvJW63LyW9B8OzvwVPwAAHYL
 dP1wgAjgdNfjf9BMWa8+SyeD+YTCLl876MrmYzv7kiK99mhUgK2cne99z6HoF4+UBm25
 HRkJn3NCodVFWxRM5eU3ZZheE2OeMbBUDBrOwDYy3fqZLP+iOdw831XNjGbXOx9LzCAl
 P7+A==
X-Gm-Message-State: APjAAAX8yo5CjDa77w3qrFxj6118WRBcOpJ/jsg9A2v2G9qD3mpzwIsE
 OmFc+Qib1Kmh6jKjGFe2Iykr3MNAsQs=
X-Google-Smtp-Source: APXvYqxLeFs0Bu9YudztGpW//IhhNRKCjSvlVGlIRjbjIwBmzmfqj38XWqXbB9KyjAUHZhLWlZ4k3A==
X-Received: by 2002:a62:14d0:: with SMTP id 199mr36081166pfu.147.1574709221941; 
 Mon, 25 Nov 2019 11:13:41 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.40
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:41 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:24 -0800
Message-Id: <20191125191340.5980-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111343_980051_2851FE35 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 01/17] gen_mvebu_sdcard_img.sh: Replace let
 with $(())
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

let is a bashism.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/mvebu/image/gen_mvebu_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index 100a9a96e5..c93a2bd6e2 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -79,6 +79,6 @@ while [ "$#" -ge 2 ]; do
 	) | dd of="$OUTFILE" bs=512 seek=$(($1 / 512)) conv=notrunc 2>/dev/null
 	printf "Done\n"
 
-	let i=i+1
+	i=$((i+1))
 	shift; shift
 done
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
