Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B5E1FCA04
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 11:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zdP+n+fp9UiilLDQvdAHQJ+FWxXbNOfUADcXz8nmumM=; b=pZ1fXj7UcI6b3P
	assFsqLlRKQ67Sa4oD091kFF+8uEnR0acQmTpaf5r5x8fB6ONjoYeQVQ/EqkQ+SqasaoiDccToWSH
	tljU+zaM3RrtLFpFa8Yu4BTX2MrFYUC420xTd85dblIs9WrV9CjykszP6o3iXJJ2rW6K1XW2pibdq
	CqqEL7jrYKYgYfSWojsR0pUo+J/i5mgabswM5NwkkYDf/G7WGs0iALsET4VmJ4lXyaY/sq/2XY1v7
	kclBwF/1EkfSRfyWkghJeNp7E2MnVTqkqxnMdUheZE+nV+Mfxy3VhbJ7EiuZLsrh0qSevL+rTE8rM
	uZPAQCYJtnfVldhuOudw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUYP-0004Aj-Np; Wed, 17 Jun 2020 09:40:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUYI-0004A6-BB
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 09:40:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id d128so1272972wmc.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 02:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u8589oJZ2zG4KitOO4xKt5OajChSiqtoL0655XcJSLg=;
 b=br+0fEEA5rZOv8v8U0LlbDkjgSAC4SRWBhyrnX2ASMppmBXEm1QAN6AA0g95v5uX19
 HixGWXr7U331DPjy4ztWMh1jj6/UhtWeFekGlsr21IQFUKZOUaqdwH8826yO6ivdILFT
 yPO7UnC6LPHBylT0PwfSyLHVO6cKDnr8YNzgsDpkGt6SERMmusEuwBftyOD8WsqjYBid
 fBlRHz4hSvTEhTtHoi2YOpItsedwY8KQEd9+sP+X8+iU3BTzMy/ZNs3EEfe76bGqXocj
 U7+g0yhVejFooTBBuwJcTV3TKYXLJ5g1ix/CMpGVN8mhHafnqn1EVAPHhfl9GWb+AkbX
 cSRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u8589oJZ2zG4KitOO4xKt5OajChSiqtoL0655XcJSLg=;
 b=siHUomQKpu/1BKwbxr0jClgAmjxS8u7tbt117OF6s5rgrl53Fc5FAKWbhCDeMVOsLb
 efRiolD8Hrui8/h7KYjSFCsJdDWPfrz1otY1v4Ai+OelVHTkVs/Rk6L/7Mb+ciBCPZCA
 ZxvarMKO6+UBFk8gJY8nH2JPZmX2BQDTcm4G0CVN64vvOhdvH/5055smO4CrEesuXxsX
 VGfimnj4PCWjor2DM+CZ6QmUkqKKqm9a0VmpdQewJFftH39O6YVTW9MMIqKbV4zGkfhf
 aRRFF6HX0PmPTcY9DwA0lfZ6wVK+LSmGzBsYr6TZ2zF0WQgQprjAnbZBbTKJ3IwEg202
 7MCw==
X-Gm-Message-State: AOAM532+rfZCC1vXnkm1NJcxJPJpA0s6dwYsYBCW949hY9gyI79V143R
 PUhcMP17dGyRmQGomsg2rXwEUBjb
X-Google-Smtp-Source: ABdhPJyOXk49den8+11Q84WPdjaqP9izaQs9ioE/luIMps1/eneKCvHEaChSClZcmF8V50tIQqXaVA==
X-Received: by 2002:a1c:7505:: with SMTP id o5mr7389868wmc.164.1592386810971; 
 Wed, 17 Jun 2020 02:40:10 -0700 (PDT)
Received: from tool.localnet ([213.177.199.127])
 by smtp.googlemail.com with ESMTPSA id q13sm33370703wrn.84.2020.06.17.02.40.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 02:40:10 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jun 2020 11:39:56 +0200
Message-ID: <4232384.NC9VUl5xJ1@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024014_383792_85DB2694 
X-CRM114-Status: UNSURE (   5.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] bcm63xx: HG622: enable LAN LEDs
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
Cc: noltari@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIEh1YXdlaSBFY2hvbGlmZSBIRzYyMiBoYXMgaGFyZHdhcmUgY29udHJvbGxlZCBMQU4gTEVE
cy4KCkFkZCB0aGUgZXBoeSBsZWQgcGluY3RybCB0byBsZXQgdGhlIHJvdXRlciBzaG93IExBTiBh
Y3Rpdml0eSBvbiB0aGVzZQpMRURzLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIEdvbnrDoWxleiBD
YWJhbmVsYXMgPGRnY2J1ZXVAZ21haWwuY29tPgotLS0KIHRhcmdldC9saW51eC9iY202M3h4L2R0
cy9iY202MzY4LWh1YXdlaS1lY2hvbGlmZS1oZzYyMi5kdHMgfCA0ICsrKy0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90YXJnZXQv
bGludXgvYmNtNjN4eC9kdHMvYmNtNjM2OC1odWF3ZWktZWNob2xpZmUtaGc2MjIuZHRzIGIvdGFy
Z2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYzNjgtaHVhd2VpLWVjaG9saWZlLWhnNjIyLmR0cwpp
bmRleCBlMjIwOTA5YWViLi4zNzg5M2JkMTYzIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYmNt
NjN4eC9kdHMvYmNtNjM2OC1odWF3ZWktZWNob2xpZmUtaGc2MjIuZHRzCisrKyBiL3RhcmdldC9s
aW51eC9iY202M3h4L2R0cy9iY202MzY4LWh1YXdlaS1lY2hvbGlmZS1oZzYyMi5kdHMKQEAgLTg2
LDcgKzg2LDkgQEAKIAogJnBpbmN0cmwgewogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Ci0J
cGluY3RybC0wID0gPCZwaW5jdHJsX3BjaV9nbnQwICZwaW5jdHJsX3BjaV9yZXEwCisJcGluY3Ry
bC0wID0gPCZwaW5jdHJsX2VwaHkwX2xlZCAmcGluY3RybF9lcGh5MV9sZWQKKwkJICAgICAmcGlu
Y3RybF9lcGh5Ml9sZWQgJnBpbmN0cmxfZXBoeTNfbGVkCisJCSAgICAgJnBpbmN0cmxfcGNpX2du
dDAgJnBpbmN0cmxfcGNpX3JlcTAKIAkJICAgICAmcGluY3RybF9wY2lfaW50YiAmcGluY3RybF9w
Y2lfZ250MQogCQkgICAgICZwaW5jdHJsX3BjaV9yZXExPjsKIH07Ci0tIAoyLjI3LjAKCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
