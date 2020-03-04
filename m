Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9CC178D32
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 10:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eec04sYUDkP9bFBYiYFplspuRHDgRymF86WX8NmAZC8=; b=TsGZZMJbUKmSLw
	O5Mt9ASfF59EvOMLt9r6zUs6J4xdq/YeEGwX3mkdJ63UuOB5Nicfh1e0pkeT+dsOkIHmI+Fiv3Sz0
	uwLFhXhTj7E9E5PyP6WZCX9/3Fa85J24QWN+Mvg45dTQwWktes4mXuj5qtrAXIu8hgPZ+ywbxg0/r
	5iqp1bo+wziI1Md+BvhYQUn4lTUmxdoDa/xc5+cK4e2QhbXQnD3E3B26dsfgeQFEGZNUqJNI+36xY
	pce4880i0bomiHGc+MnHx8JVayHDL8A56xoLnesIGaiM3aiCQqdXnsXPw20MYEqtslXpl7+zFLQcQ
	cZ+v64KF6pSeZim4BOTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Q7i-0004UT-Lb; Wed, 04 Mar 2020 09:15:26 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Q7B-00041Q-AX
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 09:14:54 +0000
Received: by mail-pf1-x436.google.com with SMTP id q9so656564pfs.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Mar 2020 01:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k7e4YBApWa/Gvdc+HuTkY21zk1PnIM0Shhw7w26A7pY=;
 b=OwJUX8t2nmf+rr6FPNG30AdKrYmHFN75soqTrSCWcVtB/h1BkkECyXItCDKPwrunbD
 wtQMYGwx880vd37a9mJ9NdjrrZ3qyhD+PCUQ1jt0Nvr0HOyN6WxHXsIKl13OffA4uHNK
 S7k1q4zNj9xM/W6Gm8LWwR0DBjwntsCE4WUTnLeYWo+LHGu2JGzusaQ1ulY5t4fd7gha
 DvERoMKlFQde/NZMn8t6mhVREWFly/Xl8mjqWxdBHcay1CiAjgKsNHFt0p26Atwts/u1
 KOgzg0EjAQLDo3bWcs+vVehE04Wnpsza3QiwqHuhMSAsOMjzDzcH8hYAn9wGbSTNqJX/
 KhTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k7e4YBApWa/Gvdc+HuTkY21zk1PnIM0Shhw7w26A7pY=;
 b=Kao4n4+XVUmiD3+WEsKS/CKWi/yND5Jebc9JjblI8GQFRGjxeVwZToQO2bB0/m5Uj8
 u0EqO2IxhFlh3JjYAKfLWTBmX4pT9Q3PzoIrytbi5pSSmBd1nOxejiW4U0I84Pl89CUt
 2MCDI0cBPnlyADhTOuyntZxc3IVQqRkyp5AlePHUnuEV+Fm9BIiBTFOwJzsEhj+ab8wo
 HosExpkPXC/4RVcfjVyKrY/66G4AoQXhtJi0Osx+xAKf2VaBVEZ01E27UYA65kApLKD5
 IhURl8V2GJBLALefrY2RwO5ApFpVG6JbPm70reVqyuni+FWTdeCwLsGZ9W0BjUaytmSV
 9ZBg==
X-Gm-Message-State: ANhLgQ3bcdJoZz2zZP72zSWan39JZkyV16RZpXdQe5xfpwtYx+6b3wVc
 3BN8UqMhgCfuj+HpCQrjmzJvbaDR680=
X-Google-Smtp-Source: ADFU+vu+p47apvXWTLGt4+/lzZOeQaXZqmVOoKsIBhJ4BBKwI3ht2PW0sXr5jjiiUEzgl0A9gCctEw==
X-Received: by 2002:a63:5401:: with SMTP id i1mr1659940pgb.181.1583313291593; 
 Wed, 04 Mar 2020 01:14:51 -0800 (PST)
Received: from titan-10-168-222-196.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id u7sm26969477pfh.128.2020.03.04.01.14.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 01:14:50 -0800 (PST)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Mar 2020 17:14:07 +0800
Message-Id: <20200304091407.14821-5-yszhou4tech@gmail.com>
In-Reply-To: <20200304091407.14821-1-yszhou4tech@gmail.com>
References: <20200304091407.14821-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_011453_394353_8F5836AA 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 4/4] malta: switch to kernel 5.4 by default
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

---
 target/linux/malta/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/malta/Makefile b/target/linux/malta/Makefile
index 05969c8bff..3a1f50b77f 100644
--- a/target/linux/malta/Makefile
+++ b/target/linux/malta/Makefile
@@ -13,7 +13,7 @@ SUBTARGETS:=le be le64 be64
 INITRAMFS_EXTRA_FILES:=
 FEATURES:=cpiogz ext4 ramdisk squashfs targz
 
-KERNEL_PATCHVER:=4.19
+KERNEL_PATCHVER:=5.4
 
 include $(INCLUDE_DIR)/target.mk
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
