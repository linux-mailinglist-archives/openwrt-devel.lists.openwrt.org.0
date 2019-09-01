Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CB0A4BC1
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 22:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kCEqkHbDvBAnhdlzEeql1uqm+nQh2YB+ojOMTmeTEkc=; b=JYxsd0FrYJU/5q
	NnlV4Z8gmSjo1iKWAKTzpjPXOaqNYA2k3xXZeVm17H2OsfN2mMlVU57iZNmR4Lq/Z4Boigus11Yn3
	Shm2UgeqJfZ4W6ZPi/45HbfcFn920hoR7UM4+KEEzmuKRzfdE138H+1S5IHUQS1izJU8/+D0IjkX0
	yawH4zdszgc0tNQ2iQdGse2cN7Ib/+JQvTROobKW+O98TQP8t+Ty3JuwIwGOXBFLKECubIOR2F8Tp
	eDvj8OHUeLJXqFeflx2Sj7vn2DPJUxrV7em2Z6ydTQe9zqjlRSU88Eyk7m8083XlpuPu2spENvJbW
	ZMKWRmVXq7wteB76elxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4WR5-0007Ho-MJ; Sun, 01 Sep 2019 20:26:55 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WQw-0007HG-Bm
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 20:26:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id b24so7713373pfp.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 13:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=0TIJCm+pLJ1udV8M2nq4ZcKQK4d4S+YBfNAH5VGiik4=;
 b=hxleYoBCv8n6QmXey2FJqTFPU6gdtqVHKCvsoFYDOz//kI5grNnFif3Pp99mg48Pdn
 hLcqlGdnguakGHB1OXa3L/w3Eta0jVf7xlF0mHIdc33OkC8HJQ1ZwIgyZ3gSPKStkktP
 1L2qmK8O5UGAXpDArfQ7aiL3GBFqY+OURAnuKzyta83NC5MJb/Ztk9RYoOAyH0jGg24+
 Pl9FVqNEz5y2ef7r7dhpBOkWl0/p9feBnxDD8p/V8Zz9WbH/1Y+CQMld7ncvN1qKK8ys
 INQ7/1ce+0Kaci8VKM80pOvk6TMZCBv930Hx15Fk3kpA6wjMujHg94s6shoRF46nfbOZ
 hb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=0TIJCm+pLJ1udV8M2nq4ZcKQK4d4S+YBfNAH5VGiik4=;
 b=bsKsfmBepWARcz72WID6cA8QVcjkr4WQWXXpp43sVa6/NC9ryT65UrcK6i8rN7xjIN
 ifH2pnlqqD8AJG05kv55tDIh/UESEbvW1feWQu8u3N7DQZyejXTUkh9ymM4W+a8YuRZa
 z+bgMXDhjp9heyNJBkFFW27rKcnzqcsjKcINux1NB6PrtrIV1ZH5HMTiLap6AylWqPYE
 DDIEc0RoAerkucIIW3Rlw4U4qaL8Uk5Lk+HlX3BQ7k4ioT6QqttLXjJfdolYVmYdo7L7
 e9wpL2JErsDgMe17ERG6WcTEVaqrxit3i9IKGpoNhOGBW0f691tbRj3q243f4yDHDGz7
 ZMDg==
X-Gm-Message-State: APjAAAV4owPlUze0Ez3ffCam/ZbBYH1Il1rqckYSl9wUFNyIY1pissLg
 3VynOWIKylwK+YZ4NwHF9sSFEJjMbrc=
X-Google-Smtp-Source: APXvYqzGRIWDKG/X7dSohb7Vvrxpta17cHXaZx3UDmkg+vgDyDp+WMU0OI8Db2gOTZS7ZG2ya0J/yA==
X-Received: by 2002:a17:90a:248c:: with SMTP id
 i12mr3828701pje.130.1567369604779; 
 Sun, 01 Sep 2019 13:26:44 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id c35sm11762094pgl.72.2019.09.01.13.26.44
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2019 13:26:44 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Sep 2019 13:26:43 -0700
Message-Id: <20190901202643.3011-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_132646_431864_00F0C1A7 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2] procd: Switch to nanosleep
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
 v2: Add missing semicolon
 initd/init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/initd/init.c b/initd/init.c
index 29eee50..b253fb6 100644
--- a/initd/init.c
+++ b/initd/init.c
@@ -97,12 +97,13 @@ main(int argc, char **argv)
 	if (pid <= 0) {
 		ERROR("Failed to start kmodloader instance: %m\n");
 	} else {
+		const struct timespec req = {0, 10 * 1000 * 1000};
 		int i;
 
 		for (i = 0; i < 1200; i++) {
 			if (waitpid(pid, NULL, WNOHANG) > 0)
 				break;
-			usleep(10 * 1000);
+			nanosleep(&req, NULL);
 			watchdog_ping();
 		}
 	}
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
