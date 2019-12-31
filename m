Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12A112D5BE
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:19:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0hu0kzxVSipWq6YLG/3NtaxNNFeWVv41knwmEaxnWZQ=; b=TSR7M5Xqp3EUN2
	hmLljaLhJUjbrNb/o0dM2ovIsJukOl4TwxftpyF8idlA1VBtnWhLQ2CH+/pcDfreGmx/ORuhkfNpt
	MbUztDoeYP/hQTGiLQ5ZYQdFx1LsAegxiVhVxLqr5PiZ1IfAiZ6WqN9bBzSgj2xJQ9jc4IBFmXdfG
	Toez3y29Fke9/loMJ0u+AHoX4uaTiES4ICxVbTQWNIElwKeYEgaHvmZuKedb3mqMToWGLnSm8W+kT
	D5+0iZgoWGtxacF28l66AwScLY1QdOIm7L6pPQ8WeLWKKX0buNwfXwoAy6DGXltmLo3DfD0AiJ9kr
	PkqHoGK8DsVsCT35AfgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im77y-0004Hq-PW; Tue, 31 Dec 2019 02:19:22 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im77p-0004HT-4F
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:19:14 +0000
Received: by mail-pg1-x536.google.com with SMTP id z124so18875529pgb.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4IwB4wr1rg8jmNdeib7Dxp8q4/Z5/TdW2LQUxd+jmo0=;
 b=TTtzm6LJ6+OC37BM+sPCm+vWREsFaB8i465OC2vItnR7GvqPrhzmfsj+WnKExwAXnB
 K5HlUIFZ+7OHIBkCWqRK9x4MWyKehcTl6JaHGPDNAvZntnfUH6B0yGq0lL5qlDfggJwA
 zy6Pl1boz6cjXJ2BvwwpJtfj2mkQI2ViUgIxYGm6Gu9+q1ziBM/Fy77EZ2MVku7s/4Ii
 9Tj2yL2iPdGVgx2zUjvgTkLJ6ejhTmHJQ3TrTs95FG4WJ9Lcdtp4QwmqFp6JrlWw7VR+
 S9fnEliBXAAO5HTEZQTOPWbp4aaBVV6nlF6N17XIsH47N2JtkKYMWBpOOulwmu43darr
 Zyhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4IwB4wr1rg8jmNdeib7Dxp8q4/Z5/TdW2LQUxd+jmo0=;
 b=HPmVQEtmR7b+Spv4sHFCEiAm1sxaTsLuGNfUw75HiFx8MfCVrR1fsXweq6kolV7flo
 aicQTIVeeajHVTHztqfJW2/juuNCLP+xv6aNfoDvQh6zxqQugBj6Rft8Cxxy3bmXf3le
 vFp2qSqkCcJVQStN9BugLhTJiMWao2bzrz2m0csAjeV3Jtw6DyhMnrnItOUZwEKSTYi2
 YO6r8IqIoj4P3LoZS2s/33WE8ineAxWmmuRX6Is2b2iqOhyqf5u70J/bTfd5J3MtazFf
 Dcc+kTmB4W1O7gpEqk1/UDqwT9GMVauxD9Ho4UegI3D5fq4CUEJL6flzVCZ88tNQ4nRS
 2P0g==
X-Gm-Message-State: APjAAAXOpu94UQ3TiPOx6j3npPbJ3P6j3KYZbtgbkf9XHya7deLq24H6
 mJ6p8xluTuKDGJc26cOmdsidtn/+YUk=
X-Google-Smtp-Source: APXvYqwR8SF3HyjnnGBRqYVts/2N5QnWEQkvjagnmuhjBTNBDk/yYFSbh79JojmrpGct1ennzUb1ww==
X-Received: by 2002:aa7:988e:: with SMTP id r14mr75949069pfl.126.1577758751935; 
 Mon, 30 Dec 2019 18:19:11 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id i4sm50041377pgc.51.2019.12.30.18.19.11
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:19:11 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:19:08 -0800
Message-Id: <20191231021910.47929-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_181913_168473_12CB2BF2 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] scripts/strip-kmod.sh: Replace legacy
 `` with $()
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
 scripts/strip-kmod.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/strip-kmod.sh b/scripts/strip-kmod.sh
index 313015b909..7886cd907f 100755
--- a/scripts/strip-kmod.sh
+++ b/scripts/strip-kmod.sh
@@ -50,6 +50,6 @@ $3 && $2 ~ /[brtd]/ && $3 !~ /\$LC/ && !def[$3] {
 }
 ' > "$MODULE.tmp1"
 
-${CROSS}objcopy `cat ${MODULE}.tmp1` ${MODULE}.tmp ${MODULE}.out
+${CROSS}objcopy $(cat ${MODULE}.tmp1) ${MODULE}.tmp ${MODULE}.out
 mv "${MODULE}.out" "${MODULE}"
 rm -f "${MODULE}".t*
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
