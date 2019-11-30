Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B10310DF6D
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 Nov 2019 22:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5WzYjBZhVuW6NFpfnTSx13g5ACCqBydwkqWvtrUSwHU=; b=YKreOS1wT0FB7z
	vUSy0970j4v77E1w76VZh/uqvtwpUnD2KsNQSJq9Ghh7r0PUJk/WnPBtkpgc5cK43EafCd58pHisD
	028x7u17sYKa0mbiPn4MBQYNtT+zH6V373kPqfXnqZkyisSeHydogQ6Q5qiScjfL00L4XE7dd0D2q
	j1RecaoIoidBd0Ib5k8zUZ6WSzo6cA5Bbp26GHhbLoWsH+hP9ChtsoU2taCgi5EPQ3i4TIJbuoloV
	FaxJaQSqoWEuaJ5rCK4qB7ao50WhX18baXpODKctmpBxxrpW5tdfpYPRmNx31WC5KnWbjHoY4BaoF
	FVnO5xp7/CeFR4ao0KjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibAVP-00089X-MG; Sat, 30 Nov 2019 21:42:19 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibAVF-00089E-Hw
 for openwrt-devel@lists.openwrt.org; Sat, 30 Nov 2019 21:42:10 +0000
Received: by mail-pj1-x1044.google.com with SMTP id z21so3328472pjq.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 Nov 2019 13:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4pGuqfhKhtInbkjnqm7VkaYwfOpCvyc/M+W6Z4HdBm8=;
 b=mdNg4imSlP6+gPMQxD/kcC5Mt7QWgzXtwxnqOEK/Xam0l1KetPpraVc93jR2CJIQUs
 11PNCgIUogHcQt2gPCNM+PumtpFmCVWqkDz8df58YZj1mqecJEiklCBav3QbZDm01imB
 NhuGrsktYqLEszNKxS6zQg4q/wWGHGbh/I9GMKZrK9w9mSas5Ehf1ncpo4FZm1QyUGZw
 +SIys7SL9u3+2PmQerIt0r/Qzk+f9HjN2oDUWPQYUgtB3h1pC8Das1XXYacd1gXsK/rO
 N3spTtikfrg5xqIO72PBwldN8Frz/hQHrJor8Y9TNkZ6I8gSWur0OlMBWu0bEUIO9gyI
 Ex2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4pGuqfhKhtInbkjnqm7VkaYwfOpCvyc/M+W6Z4HdBm8=;
 b=iwpfSFmGUn/6BxAHGcXMREjAgVoptFDoE3+eJ8+iXRHXz7DhMf9HrBHlJnaTcLa2Nf
 GedL9PvJv5QxuUWGzlKGupwASoZfUbmT13bORvj2r//SyRf5hnOFFHZBhodxA6kLkMuT
 FhxrOSRsEdHlLZDf/yQLrLfZbVc+ZawWlRTydI6TUcm8d7tTpIZ7VP+Gm/el5AbYvhGi
 myYVpMJdssN5iuMni3yc7kcEXjqvy0NS8+bKAS1QjF5xAr0xUJYF4x+zYBoTLUvKITXE
 MNUUmh/xj/uBtnu7MksKx+Za0/CRjQG7NW6qrdV0vzXVdsFDIAkDYz2GQf/YnvTJN5ED
 3+Cw==
X-Gm-Message-State: APjAAAWQEAgm9d4XEKYHXxZyeCproXwk37hW92e8DPygD4uBjlYKD9QB
 B7KVA69/2vZvND+SLPIG0mxQBgaVohs=
X-Google-Smtp-Source: APXvYqwHmsvS3uN0oRSbZ2Dae2vgv7DGW7uQMFgFy1SO12NqNdzz11YhsU6mSUIo1o7gdI6rsvN7Vw==
X-Received: by 2002:a17:90b:3cc:: with SMTP id
 go12mr3558831pjb.89.1575150126005; 
 Sat, 30 Nov 2019 13:42:06 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id h128sm4307953pfe.172.2019.11.30.13.42.04
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 13:42:04 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 30 Nov 2019 13:42:03 -0800
Message-Id: <20191130214203.15623-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_134209_594015_7DB43993 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] uci: Fix extra semicolons warnings
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

Found with clang's -Wextra-semi-stmt

Fixes:

error: empty expression statement has no effect; remove unnecessary ';' to
silence this warning [-Werror,-Wextra-semi-stmt]
                UCI_TRAP_SAVE(ctx, error);
                                         ^
error: empty expression statement has no effect; remove unnecessary ';' to
silence this warning [-Werror,-Wextra-semi-stmt]
        UCI_TRAP_SAVE(ctx, ignore);

error: empty expression statement has no effect; remove unnecessary ';' to
silence this warning [-Werror,-Wextra-semi-stmt]
        };

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 parse.c        | 2 +-
 uci_internal.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/parse.c b/parse.c
index 499c32e..40645c5 100644
--- a/parse.c
+++ b/parse.c
@@ -83,7 +83,7 @@ static uint32_t hash_murmur2(uint32_t h, const void * key, int len)
 		/* fall through */
 	case 1: h ^= data[0];
 	        h *= m;
-	};
+	}
 
 	h ^= h >> 13;
 	h *= m;
diff --git a/uci_internal.h b/uci_internal.h
index 61f2da2..f00b394 100644
--- a/uci_internal.h
+++ b/uci_internal.h
@@ -215,7 +215,7 @@ struct uci_backend _var = {		\
 		ctx->err = __val;	\
 		memcpy(ctx->trap, __old_trap, sizeof(ctx->trap)); \
 		goto handler;		\
-	}
+	} while(0)
 #define UCI_TRAP_RESTORE(ctx)		\
 	memcpy(ctx->trap, __old_trap, sizeof(ctx->trap)); \
 } while(0)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
