Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F4D18DAA4
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 22:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7A6QhdcfijJDSdyO9syKMrqI3clvt513dGukEkFt1Xk=; b=Tp3x3IQYPRBs5+
	LtTiMlh418AE7t/sBOG++GYWSHNtWVXDP3kbAGYf1RdmJDy6Rd8bthGwyMvgThUc/NqRJEbebTb60
	pIHbdZ3JpGneXfB2OsluDzMXbJLfvB8exS7xwLwUAKcHZ0JG3BAKzsu+KpHGYT0IvnNydgs5YPZwA
	EsAi0B/dv0EMaj/c8vIYnzqHAXzSvatoGSZhsJa9hnGcegXdnVxnhFgHSQ0Wu1hpdFxjqqkW9zY2J
	P0C7plEZXeKab4CAonTLvaIr+bmutRwK6rK4BuNkFf1c5Nrr4a2L0LQNs1uk9eHwYyhfaA+PjZnMI
	AhcbEv24SK85JhcpG7lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFPgH-0002IV-LK; Fri, 20 Mar 2020 21:59:53 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFPg7-0002Hv-St
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 21:59:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id b1so3742068pgm.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Mar 2020 14:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AEogC3CjLgz11KpwGsBR25+V2VoXbCnUUuNmduOAZfs=;
 b=OxLYTl/FZt3RU14/qYB3oC68xJUc6ZZj2AQHx87R5I8Por6+sX3YmZWGI6zeTSL5F2
 wHWOt/3IEaaiVlYyllIJ94zleQ84k9hyzlQQX+ml04Ski7sU/L6Z44kkJKoinVS+Mrg4
 3vzzGMRYVN9XiVEJqQNghKuj3gaoRq7SjOkIasw/1Us5GbnK8iH6EsEv/yWvuRlxtDna
 2G+R40RA/Xms+1Q8y5Bl1fzugXBaUFuUA9uKvU6YBh1tlyY6ysOQH+HmLaJ7oDT++fPk
 EplRA33M1HOgfiknQjANaKdAWRZpgmAqXdl2xEf38586k65By8SDov3CUefug5qiC64T
 DTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AEogC3CjLgz11KpwGsBR25+V2VoXbCnUUuNmduOAZfs=;
 b=iadyw41ICLf4kHBq9JNceCh5ym3T09u1H+hir1TfaFG+xHLJtMfXM/hO1WLDk6y0+9
 4tQPnaI7H2X/LxujheOWObqKKwBe/hg6zEY3xI7AbDeyM0inxdJ9658QP2yLoBSWQamb
 /KqRs/sJoSQKFLvpprlf2RgrycwT76evtOZRK0jFkLOKU/NxH/v03iIEZwh4lBn58A61
 5tCimKDmojQW5gHWy6iTOe8Ls/B2wVUOWwvsJq5LHIEFYVdEA1OIFJsMAfmRFdD+rVQX
 VFimg3ubwSy5OOt9Fm4JfDYRXQVU7Xot8ZsfIOwQITzAp9U3wBZe9STLn7ahitNv2NV+
 VF/A==
X-Gm-Message-State: ANhLgQ3DeYakqEpZBT2fxkHk1vO8CSDG29dI0el6ajSl4ZZJ5aXn0O2O
 r/QtgQX4+Xi06O/X2q+QlS4ELutXx10=
X-Google-Smtp-Source: ADFU+vusY7lfWfbU8TvzeprP821332QqqntWQU1mrgWngtEOM6I+eYT7pCZwwTeEUyXYPFDxabtIrw==
X-Received: by 2002:aa7:8ec1:: with SMTP id b1mr11974560pfr.125.1584741580819; 
 Fri, 20 Mar 2020 14:59:40 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id a127sm6516647pfa.111.2020.03.20.14.59.39
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 14:59:40 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 14:59:39 -0700
Message-Id: <20200320215939.1168125-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_145943_935381_D1FAD2E3 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] netifd: use the 64-bit version of
 clock_gettime
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

Fixes compilation with musl 1.2.0 which removes this syscall.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 system-linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/system-linux.c b/system-linux.c
index d533be8..902ab50 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -2421,7 +2421,7 @@ time_t system_get_rtime(void)
 	struct timespec ts;
 	struct timeval tv;
 
-	if (syscall(__NR_clock_gettime, CLOCK_MONOTONIC, &ts) == 0)
+	if (syscall(__NR_clock_gettime64, CLOCK_MONOTONIC, &ts) == 0)
 		return ts.tv_sec;
 
 	if (gettimeofday(&tv, NULL) == 0)
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
