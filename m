Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEF3116671
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Dec 2019 06:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e183ax+oUOrq9iF9Rce7jLdq//Bt+Pe7xKVsHEm0DBE=; b=sqoPRkghvh5t5Kx9lXGj7478I4
	kpod+I0IjoSSncPNeFtqYExT4/tsAnoK/TsLgeJ4xp+1bDwIfpewRK4BSUW3zXimRgY2yeO2Xxmb0
	BS8nccvJI3dso52KZmjRBdmkz5wsoNd4vYX71sPEVXUpSc/XW67xkjozElkKKkT+Oyrz1M7+u54U7
	7OzcvRz3yOzLvuRIGG6CGmzTp4sjDOb5oWBfxU2Q7IYLLGco0s0DEV/GNCjVMcecvnim1dc6Ppwdy
	9itY13RC/7sifr4BmuczexNeeNk8LwK2S1ha6RKeDSHgidtYqTQlLpqxoUgIim4zHJ0umVs/sqo0f
	Nbb2kaSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieBev-0005MJ-SQ; Mon, 09 Dec 2019 05:32:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBek-0004Y4-7b
 for openwrt-devel@bombadil.infradead.org; Mon, 09 Dec 2019 05:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sj3ZonxNob4e7zPUPv8ldvg3ckezj7ekP1v6v2WXHh0=; b=Q+1i7jCJC4BlWGeVdbqIxGB11B
 ZkqSJ36qq5v2zBBq2/ivRNJTlxmxuEXPtoe7T260gnw95IYRO0k7o4blTdJweeFzBWFMaJUPKJ5YL
 NUrJ1aRiqsXQU3B1WRtHf/q3Xp6Ot4iip8deiHUTjRL0rmTFKmXtf6aAXgINt6qwW44AkA/lKfSHw
 KSfnIfLk7a5EJtd5Hj0JD2xclzrjeiO6K9Gfneh1gOb3j9c+2bUVofokYVhvnF5dCso9pn6s5UKpI
 1bEVuYfvl+G9ZTF+krXyVFm7FsG1tORPxJmk5XNZvzo1GDLUUxZQQpr+/jvBce6mOGV5dWtTcsooi
 JQ8V14qQ==;
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBeX-0003N2-AI
 for openwrt-devel@lists.openwrt.org; Mon, 09 Dec 2019 05:32:17 +0000
X-QQ-mid: bizesmtp23t1575869493t40f74g1
Received: from example.com (unknown [112.19.111.110])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Dec 2019 13:31:32 +0800 (CST)
X-QQ-SSF: 0120000000200050E162B00C0000000
X-QQ-FEAT: l/GqT8AhCrG0+X4cp5VZp/YGVgj0qMjSkT6cFsyUNLBcFoNHcRtoMp45NiwSO
 hw5D5YXkFz0YnvereAOgclnHziIUwKNVx0scYA+z8vkShvI2ZaiaolFEXs0wo7z3b8nfyGc
 r0MAL1bbtUfXuQHEPznCHee3mpbvHex+VYXm7xTgh/yQSwF9zydt+dXETPWYAVrgVF5KD7S
 1QBLmfrNBQUOe1vhF2d8UbIZV6xP0KSTMfGkG3JIIi0k56yC+1mjE6Nl5t62IS0UJg2nKdU
 Kb6BR5OCJILRbWrzKk1kv20rWFWKmQLyR+sJnyw71ARQDFu2MRqgT8nw4=
X-QQ-GoodBg: 0
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  9 Dec 2019 13:31:32 +0800
Message-Id: <20191209053132.18727-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <00ae01d5ad572db0ae089120a0adrianschmutzler.de>
References: <00ae01d5ad572db0ae089120a0adrianschmutzler.de>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix typos in DTS
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

Replace "usb_ochi" with "usb_ohci", and "usb_echi" with "usb_ehci"



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
