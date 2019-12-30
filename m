Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B6612CC92
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 06:08:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CiWzDFwlDIdbjxyJHm4wmrMZUzOPlI6l/RBf0/jVY3Q=; b=FkFHmKI9/94RkrhKJ/m0OOmUUt
	Vf/M08f8NfWvhnO6lXCiU/OoPDfyk82Th9xFyafflNfvou4R+Vp9qmrZCTGcANT02D6ipq5qngag0
	T4KSbOimkxjFgh2K6cTn8hqjcdVidefq7hHshqz7zRgfmMjjfM6Y3LrhVa42PCMMC3cJYzyk6TmDq
	opqXuLfdUbBx2QUFRdTvaW+pklBB6uKGahmaJKhsNTEllpxoiWmt5fBkv028jEn5BGybX4bGZZihu
	BZ5o3aIqqeencXUcYaVB/FY+ijqRXP0UD6aou66fOVNjdaduOAxYB3O3BSSKH52FzrCi3gi7sRSgs
	81/f9zpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnIB-0006xr-QM; Mon, 30 Dec 2019 05:08:35 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnHe-0006cX-Gj
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 05:08:04 +0000
Received: by mail-pj1-x102f.google.com with SMTP id a6so7342920pjh.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 21:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VqxRSBem9e/bTdEyrhXCsB+6ftoQ+cEuBH56LMQOaxA=;
 b=L557SSzGWp+RAB7r2/ei9VxnQHkxklPY8MwIGl3D/V8BGlsFq3af8eQpY6p4o2sqct
 hD8BtCdZqcQeY3aSp1poUXF6rC0xIrHS0Jxkw81B0+C45uO3smoi9Rb0FB03Ag6WKq72
 u86eVgoY05VaWLcKw+7do8dansfStl++F+cv+FEFLLmfUq+/JBVqXAT8wqr/Qmqn6+gS
 wQ1S4g6bLUx9UwxvvBIlridSqMrkxrscmoNRj9BfO9KYWdyGqW+XxnuzVsDlTP358FVI
 w/mCvJHF4xug7cKo/IvIh290s5XRkZdTUR9zwQS56IkgYOi5VCxBWyFIX/BAuDIFPT1Z
 1p4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VqxRSBem9e/bTdEyrhXCsB+6ftoQ+cEuBH56LMQOaxA=;
 b=qjLdsAI3OFi9z+FyPy//sd6kdsQeGLTzNJTquNh2YLTHGM7O7gejXrrvmiKj4LVxQb
 yspf1MqPO6LY7WT01ht/pQ4hmq05CSS3QFYqqqokAsHFO8M/Jnd6p2i3O5XsOp2QOfJr
 cxkagqSYtV2SBbaw5oaAgGnDBPkbVSivJtfLIjINxIQAzyk7io15G4ZUd3mAn7t/ttpA
 sSq/jJKrhsVBmpGglHsjM6VUBq2RIryFPfAQNValNWLfTDEBH9c7qp5i8C0Nk4APQmXr
 f4urxLgOPf1hhJP0MM5UoEcBXNMzspntQDLm+uNNldq8qmHB8sQKK4X2buzP2AcEfN9s
 xKNw==
X-Gm-Message-State: APjAAAVBdr2X07TZMCtIXt6TFWh63zmnv1KsUAPy+CM6d68Cqee2XrSN
 8PoZ+17U9exZSWuKg3As5M+UNSpovh8=
X-Google-Smtp-Source: APXvYqzxUmapov28Vlk/TA4Od4UEFTG09YV4zjVdGE3Rf/NeTf0VrHZ89N7af0Dn+D8tMFejVABdpA==
X-Received: by 2002:a17:902:c509:: with SMTP id
 o9mr66001382plx.112.1577682481478; 
 Sun, 29 Dec 2019 21:08:01 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id d27sm45505871pgm.53.2019.12.29.21.08.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 21:08:01 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 21:07:54 -0800
Message-Id: <20191230050756.3675-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230050756.3675-1-rosenp@gmail.com>
References: <20191230050756.3675-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_210802_551125_29724016 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv2 2/4] scripts/gen_image_generic.sh: Remove
 $ in arithmetic
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

Fixes shellcheck warning:

SC2004: $/${} is unnecessary on arithmetic variables.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 1e35b1b349..9f3e4d024c 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -17,7 +17,7 @@ rm -f "$OUTPUT"
 
 head=16
 sect=63
-cyl=$(( ($KERNELSIZE + $ROOTFSSIZE) * 1024 * 1024 / ($head * $sect * 512)))
+cyl=$(( (KERNELSIZE + ROOTFSSIZE) * 1024 * 1024 / (head * sect * 512)))
 
 # create partition table
 set `ptgen -o "$OUTPUT" -h $head -s $sect -p ${KERNELSIZE}m -p ${ROOTFSSIZE}m ${ALIGN:+-l $ALIGN} ${SIGNATURE:+-S 0x$SIGNATURE}`
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
