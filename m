Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152A112CC93
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 06:08:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2R6BYq2LTgFrpG1QjQ25PWW13HLf3CVHobfdLYsYduk=; b=j0lfoYaAV2j0hrN/cdLgMULTWa
	0s9EhHpGsHQqfBKnbOgFFQZX2yybPU41U09D+Wxf0yXa6nVQqR3cXmyldhxJF2PCXkTWl9a7vKVAZ
	qLXPwiqKBYG8xZl9DnFI0dF3KAXmU8fawvlqQZRgePVHHaihoFLQz+9aI7bnlcMynaOEvqqA4b6Cf
	nBhHFuI0/rPdfKkEg9/BX8tsA2fkkjXo5QzM3cS4BE9zxs4mGiVVN4ALQb7+CTJXUYuk+IIDbxZfH
	SEjFvmgTO4et2qPRvYkQ0Zz/ZLjFDjA1l8SKssuaebi76GfVIEsK0S/ZK47ra+RT4YO2W/pUcINCL
	1vo8jXPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnIK-0007HP-LJ; Mon, 30 Dec 2019 05:08:44 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnHf-0006d1-Cq
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 05:08:04 +0000
Received: by mail-pf1-x42a.google.com with SMTP id q8so17709537pfh.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 21:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=/t+gRlXmdL5tQnC9yt/RuZ4A/INlajKZFkahPAzP1hg=;
 b=UBRw3Qfb5Rbekh86/iqFcC92SDC04qEu7dIBx2kKlEl7teYbJAC8qhaN+LfgsWKhOV
 3Oryyhtrloi2ABvEBSR/9LretDMEf/1bfYPvgO4KTYmeTfG4/v88OzWmRkPHSqECZo0w
 Mkou+LoqMDGSPoyrEFYkzflsh0XatPJinP0Xa1uC4hVKsATeDbuVdLgdaUbKJAhwGCoi
 kuGl/vf/n+R/wWU082rbTVa4VoS6IS4lHLPooG7E4WN/gFEPgXBxTi091Rs02Rta+s1K
 PaR6LJNEm86tF9mCjlp19oN4Ga5lzT15YQGJwYWBKe6JapIAVcBirGKbaMkiuuBbTBBE
 ELsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/t+gRlXmdL5tQnC9yt/RuZ4A/INlajKZFkahPAzP1hg=;
 b=XvS1w58jHxabMgFk5axlkSgEl3tNisQ1/P+MNe9TMYFt3JkUgCwmEl7xhLVIWv5TE4
 uow5UnjJnqoXCou+muXUOKK1VbDMHMIOe7/+D0JQFkrQTfzfRnfAis1IFcwWzLuK7Xwa
 s8QVWJ/0d5vo5D95/TforOn+Dnnf/qxyJcgXRjIOd+DieCKP2Tg71THBK8yN96ebhOf8
 G0JibCpnztNT2X8m9Y17VjvHd0VJrfRkD9j4KvsZUAfRD5/8FpiaRgIjmCOuW0uVRS81
 hIZ5zO+BxV+Z5q+PF0i68F2MQjBugfj/yc9kHwAsydeG1R7G45GCVY/sVvKTg11/0U7d
 lS+Q==
X-Gm-Message-State: APjAAAUNv+n46uALX20oKbSxiHPQWCi3Nm7E+EGIFO6CIxl6Ys3J6mXy
 bAkrELQ/DmaJFdx2tNUdNoomJ8XMM94=
X-Google-Smtp-Source: APXvYqwc4roxJioNy3ZLCstZKtvs9U4Rt0vklwFUEXP6VDarjOKKNiCxag5T21o55YrvlvumSpf/xA==
X-Received: by 2002:a63:66c6:: with SMTP id
 a189mr64535191pgc.401.1577682482344; 
 Sun, 29 Dec 2019 21:08:02 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id d27sm45505871pgm.53.2019.12.29.21.08.01
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 21:08:01 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 21:07:55 -0800
Message-Id: <20191230050756.3675-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230050756.3675-1-rosenp@gmail.com>
References: <20191230050756.3675-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_210803_431603_B6B855DE 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCHv2 3/4] scripts/gen_image_generic.sh: Replace
 deprecated `` with $()
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 9f3e4d024c..0832bf91de 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -20,7 +20,7 @@ sect=63
 cyl=$(( (KERNELSIZE + ROOTFSSIZE) * 1024 * 1024 / (head * sect * 512)))
 
 # create partition table
-set `ptgen -o "$OUTPUT" -h $head -s $sect -p ${KERNELSIZE}m -p ${ROOTFSSIZE}m ${ALIGN:+-l $ALIGN} ${SIGNATURE:+-S 0x$SIGNATURE}`
+set $(ptgen -o "$OUTPUT" -h $head -s $sect -p ${KERNELSIZE}m -p ${ROOTFSSIZE}m ${ALIGN:+-l $ALIGN} ${SIGNATURE:+-S 0x$SIGNATURE})
 
 KERNELOFFSET="$(($1 / 512))"
 KERNELSIZE="$2"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
