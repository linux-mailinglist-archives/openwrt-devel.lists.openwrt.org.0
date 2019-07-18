Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71246D344
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 19:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oYZMmoBhAvE4pVuMJt6+seKHTewGwnWSHAjfSCT1VwY=; b=udC5Hhi0Zgvl8i
	EQIZfYS+AVolqwIKvS2D+GQVFsFi01M5m3b1E+JeHA4WQwcQQ+pfrfLEG00OKb40LdRIwZJE9RcwF
	zRqM03CuIp6kHZnoNqqZVo22ACk/ZgWyaslx3X7OIP4ahH4tWF3faxGTQq47VxZK28sm91ix73ah7
	B+Xd72SUkDjydqMgNj/q/bWtpuD1PZbQbOuYLuEhipV8EBj+fX4qK7wdiDJxNlmTUOkOTTcBOrSo6
	fK/AlAqWV6FUkKpVYSBYxVF3BHt5nv9LAhZezacAr/okdNsload9oR0jFOZu92Et6t2y4XuVzJKC+
	MEnE4kIcO+pBvJ3gzG6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAcQ-0000yY-NN; Thu, 18 Jul 2019 17:55:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAcB-0000xz-IN
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 17:54:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so14273731plt.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jul 2019 10:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=2aiZ2kjaDdmKEkleLDr9jTYss7wGCRN+SdSQNTSB8Sw=;
 b=CN2Dyc0lb4eGIOzQgWJPCzL7OAsug7tUc0vSsF5w+nMMfjf1PWJVk+TP164bLb9cZ0
 V0v3UtlxNIVf2tpcj02vybkxc/dKDQWgWhMhRCYKMRAIljQPWDLHIc5AM/PWSKglsU6d
 h3pUmklAhPGmUKLHvRdHPx/FnvWBSdDZz5I645HUMVG7Y9JiY55id2L7sCMLbPtExLHr
 tkF8TH6lN9EYfHYGnn1ZVPolIIHbZgSBPI9eMlcn08Qyj1SycLXaoapcEJOSM7H2GaEw
 HtSKT6Fga93zzPlZJlv2+ukst4O+k8fxJCUrfAhN1IGhknMN/wb9vPlTz5u1WRy0XyQA
 ObRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=2aiZ2kjaDdmKEkleLDr9jTYss7wGCRN+SdSQNTSB8Sw=;
 b=ezKaG6ILhDzrd/9JQHMJLb2xw84k6dWbWd63p901B0n+fw83iQI+wEI+sF1z98jdDy
 zne063IRfZmZZNT4o2IkGXnagqHr0B9mJRUJ2DmFa6wv+R20gq63DC/hm7lfaTuptvd3
 RMjV+4st7TWvtYFEjG5fRDv89buRfIPzMoGR4kugLZn2KmVWddT/yJA446ifprWhTw9/
 PhPcdwnwQS65WFZKfOB71z75ppc6+2CJYVPrrmYO5k4mF6uRMBWWucDqHhjofUxIECP9
 szrMEh31w14iIPdFuEKInb4wu99vMpXJBJvdKO5ixjkdM//Ixtwmh37JqL2NzdsYl/py
 654w==
X-Gm-Message-State: APjAAAWmZIAMjtcvi+EdWW4Ekit0CTK2rQ+O9xhLztIkxGFSZMGhsmVj
 aOPZOrpsRX3EwFbBtnI0U72yutsAcp4=
X-Google-Smtp-Source: APXvYqweiR3wM8Wx3WgHthXuat4lTVpR/SFLESNtTczBbZRa3yjrbMCzWy9abgBkZw3oyci3klvKNQ==
X-Received: by 2002:a17:902:9a42:: with SMTP id
 x2mr52002573plv.106.1563472486306; 
 Thu, 18 Jul 2019 10:54:46 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id k3sm22983728pgo.81.2019.07.18.10.54.45
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:54:45 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 10:54:44 -0700
Message-Id: <20190718175444.475-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105447_628205_F9F6C70E 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] rpcd: Switch to nanosleep
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

usleep has been deprecated by POSIX.1-2001 and removed in POSIX.1-2008.
Fixes compilation when libc does not include usleep (optional with
uClibc-ng).

nanosleep also has the advantage of being more accurate.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 sys.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sys.c b/sys.c
index 43eadc4..2d83522 100644
--- a/sys.c
+++ b/sys.c
@@ -145,7 +145,8 @@ rpc_cgi_password_set(struct ubus_context *ctx, struct ubus_object *obj,
 		if (n < 0)
 			return rpc_errno_status();
 
-		usleep(100 * 1000);
+		const struct timespec req = {0, 100 * 1000 * 1000};
+		nanosleep(&req, NULL);
 
 		n = write(fds[1], blobmsg_data(tb[RPC_P_PASSWORD]),
 		              blobmsg_data_len(tb[RPC_P_PASSWORD]) - 1);
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
