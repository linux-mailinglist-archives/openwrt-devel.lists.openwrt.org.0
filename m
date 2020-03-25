Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519D2191E94
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 02:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RIasZKCxW2Jn7OEET2YKtmM9wvlURjASGPOTJOiqRtA=; b=imtMcHZ/h4JljE
	UNCneHX8mWov8DnEBXoe0J7SIUTBZLcghieaM3QgjsD279SwixaltT5MItktPxyZSVBqcvBkB7pRY
	49+bR9HFnoBTevpzDDbZ4hoVrj4osc5D7DIIEvzRUVV7wa/j0QqWlmjvhGFH2ZPdY7uvXp4m3HD79
	Gdf+cEhjKSxLgw7ODnyAvhcK8fMg6D2rUb68l2aQMc/1MMy9RAKoR+M2FIut76X2Mco0VTP1XazRJ
	EZlvUpAV6wyHWJ2UXORMNPtxEMcKSkG5KEt94y6Go1FFjo5CrIE4IrOeMiFi9n4Yas76WrNRIwQn6
	vkg3HY58RxUKLAFub0Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGus1-0006nr-0n; Wed, 25 Mar 2020 01:30:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGurj-0006nY-BV
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 01:29:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id u12so339350pgb.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 18:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yfX/qU+UTD4EmiF35yujJV/HP1s766uooxB0ZadlvFI=;
 b=cSTSduaRvU62mgp5rxdB2nOgiN6yPonzIomI3duH1n3Tzn8ZPgO3nzLQqFGc/O0JzJ
 BZ3s+8X+1bgITbMbWnMGX2ZZu6l4HqcAf04KajC5I8zWGcwFz3KlxkZpQ9WE/nLG97Ku
 gDkxMm4uzGnBkzKqnVJEjZmCfydwrYYp7FC1cnkeVTutZhDw3DHNnYmM7mL1Mo2cCspz
 w3mpm5jyiSzHKYGjUEZzrUyEe+obXA7Z0L3iVSiFPbmxN7xNZa3FpEI7aXtwESyXm5CS
 8jum82txmK1zMfcTG4HEKQut6Hmb4XGupa6RTISCgRrOTm4UK/DkdMZj7/n4gbO4F7Bw
 jBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yfX/qU+UTD4EmiF35yujJV/HP1s766uooxB0ZadlvFI=;
 b=NvQrz0kyL7vofQO7I60iwstE4kvGB9foM/tm/eit92aJVTv7xP27xulX2DKzQZKYre
 mO903FbImSWsCxnIw8kfHhijVftVugLf2YYjbDzoqI2e+fdZSNWV+37mpa51GnrZobHi
 neZqdfAMdhd01JeZ4g7Wf7jEDd6DgwokvJOOANoj4VailaGgVPt+R+V32Sgh7rZy6Phm
 RjbXhNUtGeKFG/ITDm1YyNvybKnQH1Vj6/M3GbVQidOfe1mIE0jED4vTMLfjmYHSNDzt
 yD9Z8yCq/UdobMHiWCMrKoZbCTwwvHtX9Ndtn7l2GuZHVfriJyoQ8CXe9m66zRf2AmVm
 eNAA==
X-Gm-Message-State: ANhLgQ2DPAqwfPmh0LAqVsoxBQhcbvKle0T0fpogX5m12K8V7pEC2DMg
 /M/56Z4w2q1LvV3cUSvjvx6/IQPb9s4=
X-Google-Smtp-Source: ADFU+vv5jQUA4xtftpz02iq6zY098N7VsjZnPJffXJLiO5SSoOts7xjdKo4iudzr49LEAbtuzyCjmg==
X-Received: by 2002:aa7:93cd:: with SMTP id y13mr655852pff.213.1585099793580; 
 Tue, 24 Mar 2020 18:29:53 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id d23sm17283945pfq.210.2020.03.24.18.29.52
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 18:29:53 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 18:29:51 -0700
Message-Id: <20200325012951.1119418-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_182955_417862_54EF93BD 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] toolchain/gcc: remove uclibc hack
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

This was introduced with 014d3b98b96872d020ffccf0358ba60967b3f1c0 , which
is almost 10 years old. uClibc-ng does not suffer from this problem.

Note that this hack prevents libstdc++ from using C++11 math functions.

Tested by removing all of the mpd patches designed to fix this and
compiling.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 toolchain/gcc/common.mk | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/toolchain/gcc/common.mk b/toolchain/gcc/common.mk
index 5f237e4520..090aa2447d 100644
--- a/toolchain/gcc/common.mk
+++ b/toolchain/gcc/common.mk
@@ -74,9 +74,6 @@ TAR_OPTIONS += \
 	--exclude=libjava
 
 export libgcc_cv_fixed_point=no
-ifdef CONFIG_USE_UCLIBC
-  export glibcxx_cv_c99_math_tr1=no
-endif
 ifdef CONFIG_INSTALL_GCCGO
   export libgo_cv_c_split_stack_supported=no
 endif
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
