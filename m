Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D148D1C102F
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 11:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YP9bvkbn3aH2vUkPU/mCaUge8kQuaVPJzes5sgLuuBA=; b=FeL41onhU83462oAapnZgoKQv
	Gg/rFVAwtQUqvNaxkPiPiOBt5FVmxJwkYOc6Mu6QY7+TJ5BptMgoXtNcbdCh7VORtnR9QzHR2hyFW
	QKV+KZe77GgKTat6y1g3ugwtIHsKBXGoxCZAfuT0rlFgHxikvN1QC8vY63SPGXpX8V33JIj9QfHsD
	dfXiD7g8G+M0zRzg+tAfYKGFZbY2p9tddQ0Zave+qWAgLp6AFJYJRNJ7GsVJ9AalXKbigwCSL/AwR
	xMWVRNlLKnhrLNCBj5AmemUY0MJdPtXvF6JvJbukGnQ6c+5aw6JTdU9LcqzIxrBxITlmG8Iraz8of
	8XvynPdaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURfd-0002a8-Le; Fri, 01 May 2020 09:09:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jURfQ-0002Zc-Qi
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 09:09:10 +0000
Received: by mail-lj1-x241.google.com with SMTP id b2so2085497ljp.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 02:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=8ZIOtAN7E7RNsQ9hXvb3sPUTzOdLKpbV+yYtfYXZZOQ=;
 b=iieZroKahi8c1p9hZM1Ucy++vgROdYLafVSUhWI1m5CSwuWi9QYHf6XXWe12RKmiDX
 ZlKoiSvuZdUIdVW6Wn6utIPp/c7Ng2KB39JgUFYRpKe528ABlGh4jBOsZiB4q8Uo1UBI
 ScI/f9FtMzWQOi8gUCPx8fBiAAx+yysofWNKw1UmKqlCaO+3HfNlZwHyhipgFqBq0Ove
 mCtSkCw4fUNkfTrvgnPp70PkobbDt4AnbqzKbMjds0WgjA+6nSnoznxz6XzXFlx/eDrl
 qOkSR1zyiwgNHbf6rvp45xSz+Vqr1FNYt7ZcG8mIdoDl1xk6tnQ4hcjYQUKvm/+g0Gnu
 rCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8ZIOtAN7E7RNsQ9hXvb3sPUTzOdLKpbV+yYtfYXZZOQ=;
 b=IvjDwMkWmidfwdM4qR+oj0uCGy8rGZ5SnXQqUYrGIuV10gQBj7Qvkpn/v95xo89wqw
 242JKHUtu1+LacwfRLAPJb/vD0Ky8zhuaMLUnSXaQcuVcedeKDmxKpHwCs/XyMApocXx
 2eMyrCAWN64uiW9Fb9hR6vMiR4eZyMc1LGIk0MJKEkO9zH6CVvrO3Kudb4Lx+MlLQcXk
 B3DMRKq96kakmdMmCR4YYVS8GBFNvymbTn2xsKkebNTb7vtkaZTHNub2mrVJMcDHkw2g
 gqLv/wbFAM5+2Hy7XUe+Cjy+0Sgg+Z+og0UBiCt1VnJE2wj32FUJxdVJX07QBeLiHf/3
 H6sw==
X-Gm-Message-State: AGi0PualJFScqoIwhCbcT4rkXGfiFQaHgn+Bh31efZboPRQ5SeeFUFIu
 c0fRIW4p5AMgT8VcXwogfIU=
X-Google-Smtp-Source: APiQypI5y68zs5ec6KGVrRTqPCYzubTSDPOOyalktDknUgXEMVLqGj5g8GNglHW1wErDJDrf6PHCng==
X-Received: by 2002:a2e:b4c2:: with SMTP id r2mr1921972ljm.143.1588324146468; 
 Fri, 01 May 2020 02:09:06 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id a5sm1807111lfi.20.2020.05.01.02.09.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 02:09:05 -0700 (PDT)
To: Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
References: <20200402121213.16777-1-zajec5@gmail.com>
 <324de768-bd32-b1ee-78a3-d5d3a115385e@wwsnet.net>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <a7a36c65-1a71-1339-7f5b-e457754cee44@gmail.com>
Date: Fri, 1 May 2020 11:09:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <324de768-bd32-b1ee-78a3-d5d3a115385e@wwsnet.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_020908_892615_6D87FE85 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH fstools V3 1/2] Revert "block:
 mount_action: handle mount/umount deps"
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sorry for a late reply :|

On 02.04.2020 14:35, Jo-Philipp Wich wrote:
> instead of reverting the hierarchical mount handling, isn't fixing the
> unintended mounts just a matter of doing a prefix compare during
> vlist_for_first_to_element() traversal?
> 
> Assuming that `the_dev` refers to the block we do want to mount and `dev` is
> the iterator pointing to each `dev` which is lexically ordered before
> `the_dev`, would something like the below code suffice?

I don't really like that as it's just patching something that wasn't
properly designed in the first place.

1. Not every entry has mount point but we try sorting by it anyway
2. Mounts points are only read from UCI - current code ignores those
    "dynamic" ones.
3. It handles a single case only (with limitations) - what if another
    case requires sorting by label name? That could be desired when
    presenting all devices to a user. Or what if I want to sort by
    device path (which sounds the most natural by the way)?

So instead forcing fstools low level design based on a single use case
we should rather have:
1) Generic low level design
2) High level code handling specific needs

I posted a WIP patch showing how this could be handled without forcing
the way fstools stores its entries on the low level:

[PATCH fstools WIP] block: check for parent mount point before mounting

I believe above PATCH could be used to handle hierarchical mounting.
Your code from attached diff (dev->m->target handling) is something I
didn't figure out before and could be useful in that WIP work.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
