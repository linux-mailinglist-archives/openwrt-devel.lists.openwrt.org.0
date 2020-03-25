Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB59B1920DB
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 06:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZnhxDlXWnL8dMoemG4AL+TyWcL517TzxBhyRNLOv2cs=; b=JqMlMUgkhtFgUO
	b8sW4LyV1nnKGK0QW9Z7qVFulFM6822xe3CrlQPtCWrJK4TsA0L4UzB4LubRwFMpjdIkOhMms2Tcf
	gWhV0j19OBcORyp80mks149jMmUl2IIxrC9BBBsQuyOA2k3/TQSrYTsDneDo58uVjPHGYijO9OAQo
	q1wDUpDp2mr/p1nGOfDVupMMjCAleiADQLMlFu/2bBXD7rIVsS7M734faxzk43phWD9fhQscHyLAH
	RBBRa87xtx7PL+aZwubIiCf8DwZeb7/zEh0V+QjR+pJWRcwkY3gNLtkPS1xXMMw9S066DVhASsOjZ
	UuMRNzq0R5siGIRtTbxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGz4j-0006gB-LO; Wed, 25 Mar 2020 05:59:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGz4c-0006fp-II
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 05:59:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id s23so377242plq.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 22:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eL/hgQ7jUNqKQACiuhUF7T0KeXh+xcKZkosPmgilyIs=;
 b=Ih5Ani5tSw9EsFiMAD9wtMJnNNOOKnvkgwn8JvgA4xUGhi2FLfJWhHUm7KHs1xwv9S
 c6K2mw6ipMrVpdakO2lepW7kZg5RgETaKuCK+ktlDCAg4Jrcv5cHxJVEtKLyhNZhj5qx
 JZINbg5FS0fayHaCrmUl/1Zcz/1p4bWnIazXFCc4RgER0EYKxieqAoIJikcDfhHPMydg
 C16sqopRHDvOx00Tpw+gvbKwPX2Z5J/x6JqTT4Y/uuOg6bgOeWXRECrjdguGs1zVEO3w
 c6F0tokTYQa3rpnhhzEmiyNaXmOExM+79x/bq7DIZKqJKAHrcna2vvk/z8/XJyP9Ygzm
 UMvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eL/hgQ7jUNqKQACiuhUF7T0KeXh+xcKZkosPmgilyIs=;
 b=DOPHBuXkUXZx1y6TjkZgbwYFuKpQ7dT58r/idFaMDlKSwuYU0lpizLjf/kRFMAWsQg
 5UkIEYPzc2eiBCpTNkM8dfdcF+U8CWuXyKqpyBnZJQzm0kbTzQgBEDntjP1bVdAa3ut6
 zG9TXJqKrRh/ft0ul1tx76jc24+PQsBazyNOo8mQbzcoY3SFt6SN6/Evb3c03kAH554Y
 RYhCkY+A5jtgtOHhOhoolFmvo/3QrO8axzz/fllLFhryN5mcw1WhH13YKFUD4lBOmQij
 vm+81yK8Qp7rWQ6dYiqaRH2ZRHeH8eWYiqEwpoIwWPT1xyTYWid9B6Z9dcV0u7qIHtHb
 jyVg==
X-Gm-Message-State: ANhLgQ0kZuKu8YXo1EFQ6n05sxxcw0Y+Q0mE8Y9XfvhcULkBa65RQs7u
 4V70uyUmv8OaC99MLty2tfocVVu8woA=
X-Google-Smtp-Source: ADFU+vssqhb1ykRhPgbR/7wwsrqs5Cm+4WOKdjXh4KpPSKFFa0y6KSNCYkZpSVyw751BnlTDL4Vhhw==
X-Received: by 2002:a17:90a:8908:: with SMTP id
 u8mr1940358pjn.66.1585115969624; 
 Tue, 24 Mar 2020 22:59:29 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id e14sm17303138pfn.196.2020.03.24.22.59.28
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 22:59:29 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 22:59:27 -0700
Message-Id: <20200325055927.131611-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_225930_605804_AC582328 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] ugps: fix 64-bit time_t
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

The abs function takes a 32-bit int, which can cause truncation. Fixes
compilation error:

error: absolute value function 'abs' given an argu>
if ((sec < 0) || (abs(cur.tv_sec - tv.tv_sec) > MAX_TIME_OFFSET)) {

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 nmea.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nmea.c b/nmea.c
index 0223b9b..83cb429 100644
--- a/nmea.c
+++ b/nmea.c
@@ -104,7 +104,7 @@ nmea_rmc_cb(void)
 
 			gettimeofday(&cur, NULL);
 
-			if ((sec < 0) || (abs(cur.tv_sec - tv.tv_sec) > MAX_TIME_OFFSET)) {
+			if ((sec < 0) || (llabs(cur.tv_sec - tv.tv_sec) > MAX_TIME_OFFSET)) {
 				tv.tv_sec = sec;
 				if (++nmea_bad_time > MAX_BAD_TIME) {
 					LOG("system time differs from GPS time by more than %d seconds. Using %s UTC as the new time\n", MAX_TIME_OFFSET, tmp);
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
