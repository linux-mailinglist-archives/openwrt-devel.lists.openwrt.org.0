Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621F218DAA2
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 22:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TIrRhd2ZhVZi5RW3NGn8QFIXyVYdnFnbdc6FW0jiVKU=; b=cThYQgDxSrk7/o
	OGY8uNrZe2M+85YtNXDQcfEWPpNPTQ360m3b4u1xXRAGs9hbJGPpgkauLyKJRBRN76uX7a88Bed0I
	LVaSyAXSYceyTfbyXjQlhMqSbCQiGHKVU+GBEjiUr5lZseJ2+iClp4+w3ix+ZLgmpmmtRNqNUmx3G
	GAKAvGDtdcwZbzYVNHfpGzic/ZETnSN0fQ4oq6nzVz4WUVGe3a2CbbXFyZCsLizaaZxYm7GicO9OQ
	LltlFGAUf64meUjaS9J0tH7ExyfBATe3XvRPTIRBitnkxvk9yirwEdVeJJP4VMiMzkjWksHLgxRIM
	c1mBRf6qVNQ9prnddegA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFPdD-0001vd-27; Fri, 20 Mar 2020 21:56:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFPd5-0001vF-PF
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 21:56:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id f206so3979068pfa.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Mar 2020 14:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dcsj1hFuQNKurt5jyPUaL7JLQNlocFoGXI8i8lLV8vc=;
 b=GiDe7BbEy6gIyKafIfOaNM6AB+gho5mkjHo8PevJ147gw0MhCTq/ouOS44ssz/kPaS
 fJrvzpk7sj7hYnlq0g/iG+3aXU5HVUtW+QD1HcU2+0Mj8To+qWZ8WOwuW6IHc3Af05HT
 yUvwoh9tWRGv62OctRvZdLPLBs7YDXRWsAL8GPcIpvbtZgidRCgDbsfgdvqcRV1S7R4L
 kWzgdTcRLAB+a3mdz5AfMK9l0x4u8Xf4PkICEdCAL3bGt4RKY9GDlQaOw4wScXOjbnhS
 9Q0FCuc71hcbKehhBv5nzDMIIjQ6ROFBqh36vxzqxDPEOb5142+K1n8EXvU/RZI1XVKy
 N+ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dcsj1hFuQNKurt5jyPUaL7JLQNlocFoGXI8i8lLV8vc=;
 b=GEzs9QhSIQgB/Dd0VLT8/rUEOdSp37/uYOu5AfXc6vLYg+GH2EKPwNpmiEMOXNQlMj
 0NwMms0RAnCaZiiByYYoK6tfe/5OyaL8r+2GANtxN6F2vuSOlpyBviySNqAbhIZ0c0oX
 SxJ2aoSy9iJ720rnd4OJfF+0mmb/AFfB0IYWkWV+PDd3GWLNBRvn64uBcoaCpJ8MiKLr
 +z+p3RZtIZVV+mFnhpWoeGV4wa27QxKWEsS2vbjB7uZtUBSbXPYnR6jGWKv821ktJLcx
 D3TXr0zYWs/5le7ekk2KnsQSivC/Hd0CFMnFOZ8QVFMyYHmRV7A+5CiaEArR/U0HGY9T
 s/Iw==
X-Gm-Message-State: ANhLgQ3uzqJvdFR+HDWxF6Q8cw/g+9ZGbdRzLL2K2Ua1PZY6oRc7ApGa
 LVmXVyLvbZV+9dGzZSSbH9bAMZFI6Ak=
X-Google-Smtp-Source: ADFU+vsk0DsR3wQebWywhUuq/GwonAjhJUzbUc2ytyAsxSFh79yabLSYd6YDW6oZ4rdPI6sONkqMXA==
X-Received: by 2002:aa7:9f03:: with SMTP id g3mr12550592pfr.287.1584741394055; 
 Fri, 20 Mar 2020 14:56:34 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id h95sm5655369pjb.46.2020.03.20.14.56.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 14:56:33 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 14:56:31 -0700
Message-Id: <20200320215631.1156867-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_145635_845171_2AC1FED7 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH] procd/rcS: cast format string to int64_t
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

musl 1.2.0 turns time_t into a 64-bit value, even on 32-bit. This makes it
compatible.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 rcS.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rcS.c b/rcS.c
index c2e1abb..aaf7314 100644
--- a/rcS.c
+++ b/rcS.c
@@ -118,7 +118,7 @@ static void q_initd_complete(struct runqueue *q, struct runqueue_task *p)
 		ts_res.tv_nsec += 1000000000;
 	}
 
-	DEBUG(2, "stop %s %s - took %lu.%09lus\n", s->file, s->param, ts_res.tv_sec, ts_res.tv_nsec);
+	DEBUG(2, "stop %s %s - took %lld.%09llds\n", s->file, s->param, (int64_t)ts_res.tv_sec, (int64_t)ts_res.tv_nsec);
 	ustream_free(&s->fd.stream);
 	close(s->fd.fd.fd);
 	free(s);
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
