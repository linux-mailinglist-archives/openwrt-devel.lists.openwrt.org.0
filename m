Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BA1A37C1
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 15:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dm2tVi/cCI4Eqx84HOr7gDjV/tMRXSMbVViAX86E/lU=; b=aLMDHkOEHjzETGg1xVDtAmU2WQ
	qpZ2muVFYvDsmFN6af7Uo6YQl8zNt2yQYryyTDxh+DeK7NQSGSePSIX13S/dX9QcHLbKyq4b2aDz1
	ZeQKSa6JdhaFCKs1VLxBWLoSmhplTjh2XlCXTkKuFI0h0lj4ATYs6IA/j13EwYbiL4VZShmPRs95m
	QCKf8Qm1Ft75Q/aSJCIm/9QYhT1vk3B6SyyD2twkA9SQAwVK+GvJVQNxSA/+vbvbbYEbNbV49D+6V
	gJSO8yak7zEXrcn9towxyP9Ro3vx0y8tT1IBdH0Gz+zQ8OyF3qjjZloH4qbixYN1QVlZ4whsaZdME
	KuEYv1cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gyd-0002IU-0F; Fri, 30 Aug 2019 13:30:07 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gyJ-0002Hy-MK
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 13:29:48 +0000
Received: by mail-wm1-x329.google.com with SMTP id r17so6497028wme.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 30 Aug 2019 06:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=nUHaNFmZVEAXzzo0vkvrVH+CjtDfAc+0mBOrzYQiuK8=;
 b=sHaduKRCwzBNmDy3qtzMAWO3tkGtKjBrcYqwC2wE5CkeT8gGnhajdx2lovypcT3ol+
 ZkmMOOWb3xAbFtW6JcdVc53IQcL+PdTIR3M+3eNhC8pDTpFCqSwbmyYQDVfwxtP2WOsM
 nbWlspxW4OKM0P8ZW+fG9tagK3UP6M3hai0sGxz0kE0lxcX+Fqn/0DT32Oql6t1aQxZa
 bZ81Qjm8ra9qUBvgdEvLs1iYuoYoQN12VD5tFryUEXJFk7SC7s/ldThYg5gNzG/ufOSg
 nxQcHLF5ZN3tZGGOyMkClsGFy4W9a/Dv/9XiOtubbiReFfMYgmfqm2O7tzbgNckuk+U6
 A+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=nUHaNFmZVEAXzzo0vkvrVH+CjtDfAc+0mBOrzYQiuK8=;
 b=i2TzohV8XpGl2NlAtxtJausqIdOJaMDx4qSl8l5oa3a+5wCvZb5E3EWxVaO0kT4zcL
 IfxsDRbg0L/sJaJK+LUQxnLxWZLorCkbuY5n0RMpfsswYiHk4IH6pXk2UXzpdkxj6zP+
 PdLLgf63JoFb13YpS/i9vfpmYIKGtHfWWJq0mZCw12XEYfkBF7LCZqh6lA5xc3l3KuNg
 S3hmEbsIV9/O63hUSr3NK78/ajwE8vrRxpEY7hc4BowvST7tMYeaGRGH89dvSYVzAHko
 UIouGqQYtAuCb3W+YB6EjXGeAn8651fGaTZbjtIe+5iZxFYg5Et+tLXj20oTrLsELw3m
 jouQ==
X-Gm-Message-State: APjAAAX/syxC4qFRgTzjiBbFhHBDHjkw1aUkTdMKPjIS5szsZTUc5Vmf
 jVOXhJFFo005cQTkXGAlgDc=
X-Google-Smtp-Source: APXvYqzWCLPcnBWqzW7G9IpsR+VCXFzypuiUaUz8kJnhSO4FtiWHjGbII2TxVBEfHCFjh90YWLsR4A==
X-Received: by 2002:a05:600c:2385:: with SMTP id
 m5mr7324675wma.4.1567171784071; 
 Fri, 30 Aug 2019 06:29:44 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id p26sm3687286wmi.14.2019.08.30.06.29.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 06:29:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 8a24ef87;
 Fri, 30 Aug 2019 13:29:41 +0000 (UTC)
Date: Fri, 30 Aug 2019 15:29:40 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <alpine.LNX.2.21.99999.352.1908301528450.4349@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_062947_758566_DBE2AD1A 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: [OpenWrt-Devel] MT7610En bluetooth support
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
Cc: nbd@nbd.name, John Crispin <john@phrozen.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello!!

I saw commit 7f9edadf85299cd4fc965a811b40eaa57a368486

and was wondering if we can now use the BT hardware found on this chipset.
Thanks!!

Enrico


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
