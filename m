Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2801FEE3E
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 11:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nsSiK0bxSPnxzbLi+KpQs7hcu9O3hYX3jPyuTMYj8Vk=; b=QOUnYnXKSUVXCsN6Boh0XiW1B
	Rw5oNdhg9Xl0lYzB3Bj2Obc/tkSGJoUyxWYSiMSfrMELurEHob4rXWAPq1vYLw/nmYB1kVRHowdY+
	UxEsj53BBrUMQ4z9eSonY7yQ5DabP0DKURyyrZBuyGK7YfyQVq75gcGxTRtciC4RL17Zou9FAmVYE
	3P7g/5NBbP5m8V0lYV3OZUGozkd3QFc7YGRh/9F2yNuvOzZSe2JjRSsic6kKzjtcf7p+V1e0LjXuK
	H+3bKT5fkdMNXLviEl0gz2dNU0uPKJLUW8937PgBBzjR+bhbdXWKWe8XAF+eCQ7YkOKeciVMD6CNx
	A1gWtgUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqPC-0004En-Ep; Thu, 18 Jun 2020 09:00:18 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqP1-0002q9-9J
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 09:00:09 +0000
Received: by mail-ed1-x541.google.com with SMTP id t21so4214112edr.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 02:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=VAx4qAsYRaqqEtBsxE8h5A3uK/4FKrQBySy/mJmr1lk=;
 b=eh37aVu1wTle8cEdjI8NYMb7pe+PVASey7RY5YQmUHQHZAcg6TH4ZY+kkHuFlhGaIf
 +meBk5V6It2kskgpYrliO2MlppH0pNTsdPselzsH+6c7diepRr5/mXn0jWTbp3M14NN2
 gDieBeIcU0Asdm0djPdUC2qFU2/a5oLVbh8lNuOwLcim7ZT0r0JUJ0QJMHPDxEm34SCq
 ArPru+ZfdNE7xIkwY65k3amlIRzFLTTwXs7T+hAEzM8uC2Z0CjmCKr2GKZRvTIRQciPG
 MD9WtyTZ9uckshAzoFSN4YeJlqPhTQ1jczrf5GQz3HElnxQ+LKmGb8j+yxAKZYHHx587
 MSCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=VAx4qAsYRaqqEtBsxE8h5A3uK/4FKrQBySy/mJmr1lk=;
 b=s2Dzu+Hv9EwaahP93XHSl8QV7RA3zl5mlFq+67cOTiWTjUupC+Hh1aIyWtzg/T4Aa3
 zxKrTOeIgDa6BseUqYVr6LemKvL8Tk5oRATMOU7/O6gd84xP+gSQWvcmEwAGMOKPqtEQ
 hsVOULiFxuZVWJv3Iqdj9rY7eAAK4d/cAEQ6gzgLB/R91m7KVWoX8N6RcZBM2Ud1iZt+
 J4TsbvLyF4R/AO8dt4KekmG17+ksLL0WrAoTI0MSnCZDa/mWBkE5Zo3blHg4MzSb+iJu
 Wmh1XLHmlQgY2SOOLobiPMTu90aA7+SPDheGvIPWli8tuA9LaWWei1Ax01oil37m3SEa
 l46Q==
X-Gm-Message-State: AOAM531VGGgCoLQNki2cagJUWW95CizF/IsfP+gDh/BWrOjzEP6xK4jF
 ZfAX8PPcawh10qUmdE8WfFu/39mshZQ=
X-Google-Smtp-Source: ABdhPJwViBHPNRouCQlqn4+7H6y/gN4ZAq6Ma0ghSASuP96okJfpR3iVdCRPkICXCJEVxeAQbH01CQ==
X-Received: by 2002:a50:d302:: with SMTP id g2mr3089004edh.312.1592470803326; 
 Thu, 18 Jun 2020 02:00:03 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id p6sm1806267ejb.71.2020.06.18.02.00.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 02:00:02 -0700 (PDT)
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
References: <20200618065015.73096-1-ldir@darbyshire-bryant.me.uk>
 <9c5c159c-7638-5fdb-027c-39f8d9b2a9e8@ncentric.com>
 <0F2E877F-1104-427D-9C24-220FE3434F93@darbyshire-bryant.me.uk>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <218d5d94-52b0-0a32-ec59-286254b01c1f@ncentric.com>
Date: Thu, 18 Jun 2020 11:00:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <0F2E877F-1104-427D-9C24-220FE3434F93@darbyshire-bryant.me.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_020007_399149_0E786FCE 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: bump 5.4 to 5.4.47
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 18.06.20 10:52, Kevin 'ldir' Darbyshire-Bryant wrote:
>
>> On 18 Jun 2020, at 08:58, Koen Vandeputte <koen.vandeputte@ncentric.com> wrote:
>>
>>
>> On 18.06.20 08:50, Kevin Darbyshire-Bryant wrote:
>>> Refreshed patches.
>>>
>>> Run tested: x86/64 (apu2)
>>>
>>> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
>>> ---
>>
>> I've got the bumps in my staging already sinds a day or 2 :-)
>>
> AFAIUI 5.4.47 was release 17 hours ago, a few hours after ynezz committed 5.4.46 - I think.

ah right .. mine was .46

got to rebase again for the other bumps ..


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
