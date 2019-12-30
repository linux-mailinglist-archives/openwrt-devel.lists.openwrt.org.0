Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDCE12CC30
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 04:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hM4ZwgGeP/s1sxUONYAX2s7lP+g+9uXEMGKvInLsCTI=; b=BQsaCsWMoFm0ViOkLCkaI84BzT
	Ov66rmOcyVUjv7z1pLsosavYzqAJNNnBy/kGfkxt5yU+66R4IWKSgC9Rdzt/e8zi1om87+lf41Dm8
	xG0j2ahXecWS8BHS1EZV3BmMZaDeLHGaWRRIkfU78ZJWWbeeq6IHZASVy+JS4s60+r50zijmf6QxC
	v+zXy7/EB3bgten7Ye+bDnDdt8RhWXVI3BN7y1aoEK/+pl7H9U3wYWu3OvO/kUsH5Gv1kw75hFPSd
	RL8WDpX/6nxP5fR8ph4/0udkNRv8XTnGCo7o/jWJRM7fW6pzdOWwcR2fEnP7MIr8wcBRmjdOF1/O3
	BrpZW3lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illw4-00041u-40; Mon, 30 Dec 2019 03:41:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illvn-0003si-HF
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 03:41:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id a6so13391339plm.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 19:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=SEq2YXtgPkMC0bdOSLn2jcAzhHp5OU0WZL1xLB44ghE=;
 b=VQUFKXm3mJ7jv0Bue9rzBDVzd+r/z0T6yweXLu9pfmG33aV3d9J/o/O0PWg6sxZhsN
 HdEOjvr1LBp0iq7hJfrV3L59eeML5lex6oC/XSX5e6iAfoykPifMACyD/0TAuNGjH1yg
 H4MIgbrPLB2P07tbS4Exe4qiXxVJ1x6l2r1z2you6ni9lQD435GzDSNEKX6pwZUmhIMU
 ujpDbpuSkf+KrSQAspn1wDGj52xG3ulOzPQIj9vGkhEKvYYVYTqryq8o/O6Lst/Lxk3k
 LR6J4kuok7bliVGusv8RPamYZZJHDeHTKW54Zw6SSw9nX/3pjxwazHlkKIaROjMjONO9
 3sTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SEq2YXtgPkMC0bdOSLn2jcAzhHp5OU0WZL1xLB44ghE=;
 b=P2nKc0HS+dY6nzEgIrMiqIDoQBMMtjYJJ+hBZCu6I6GYI5afv+polPS7VODPYxj3/2
 nuG9h67S4qA84czQiuY2uKPCMcdJbNPEvP5PSAiK9wJ4ylNEHST43kCKFqGKjJ/iiqJm
 SHOCmAbX+FFrMz2/rgjTKv5+INYgNaDrbkQ2KZcd0jS7QYrucw961oa8quNcHDEr/Ldt
 x69FQXJSPpLA0WKtmARPMzzQ7TlK6EL3qkHYdarlY6HXSa/nN48LCilqImlzhLHs4uR7
 DLTGTJAMUAiDG/L9RtKmu1Fh9e/eIrjVdrX7ZlBrbxUVhyTb1mGTa2b9oxu9ajAm1bHc
 jqgw==
X-Gm-Message-State: APjAAAUEkww3vwQKkzDh+KMra1RbDbgmyr4nchx5ICmjFU9gL4ky1Xk1
 hL5YTs5QvMNxGx0aH/RCGFVa5Payq34=
X-Google-Smtp-Source: APXvYqwZrQRQQgTiEiYFgBtQUoKsP02vQTZcyDJUiPEf3o/dFgCT+WN/VSsswlb6/mpii/vGIXWa+A==
X-Received: by 2002:a17:902:b490:: with SMTP id
 y16mr12622287plr.63.1577677282530; 
 Sun, 29 Dec 2019 19:41:22 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k21sm43351576pgt.22.2019.12.29.19.41.21
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 19:41:22 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Dec 2019 19:41:17 -0800
Message-Id: <20191230034118.21718-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230034118.21718-1-rosenp@gmail.com>
References: <20191230034118.21718-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_194123_567430_05AE7B67 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 2/3] toolchain/wrapper.sh: Replace read with
 read -r
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

Without -r, backslashes would get mangled.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/toolchain/files/wrapper.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/toolchain/files/wrapper.sh b/target/toolchain/files/wrapper.sh
index bd4996cac2..ba2b34778f 100755
--- a/target/toolchain/files/wrapper.sh
+++ b/target/toolchain/files/wrapper.sh
@@ -30,7 +30,7 @@ TARGET_TOOLCHAIN_TRIPLET=${REALNAME_BASE%-*}
 BINARY=${PROGNAME##*-}
 
 # Parse our tool name, splitting it at '-' characters.
-IFS=- read TOOLCHAIN_ARCH TOOLCHAIN_BUILDROOT TOOLCHAIN_OS TOOLCHAIN_PLATFORM PROGNAME << EOF
+IFS=- read -r TOOLCHAIN_ARCH TOOLCHAIN_BUILDROOT TOOLCHAIN_OS TOOLCHAIN_PLATFORM PROGNAME << EOF
 $REALNAME_BASE
 EOF
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
