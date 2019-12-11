Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E93911B0B0
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 16:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qNFs6v2+Bvm0QZ9IDHA+wV1dPzXMB79XqOxd4sv8+Fc=; b=dzLJkXurvOptIb5Ye8yWmvToh
	0MMWe07f0bk98wUbhlBiA0vG0e6Ox1obPPJEOyEkvCPpUY7c7PPPMx7ZyJ5zv3LUrUhtXoLWp+XgY
	0X9nHk1wVFg5vhi3K7ldy6Vm/zpJiipi43ofCGf741uzaaPDktRMQPfAQKICKksjhwjaJY8wMzlwm
	tjldUVwCFlDJhASpORjvUm2/YjKHzhoJJ6oWh8x9GNa4GP9Pi1G7SqyykXf55CDckvVJVbDzZVVj7
	t6GYBWerAGpmsf/kv2Ms103hCSZYfoM8YfnIqt7YoOOYv0H6CXIGLF/TYj1hlKYS3zXkRF6ANjSFE
	TE913RBqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3rb-0003Gw-4m; Wed, 11 Dec 2019 15:25:19 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3rT-0003F9-Uf
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 15:25:13 +0000
Received: by mail-lj1-x236.google.com with SMTP id c19so24441351lji.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 07:25:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=V7KR/FTEokdzwKrC2/sUKsv/XsYihZl9VkunBxEl6zQ=;
 b=WMA4iI46hTdYUb+zgo2FStFVSSfFVFLyqoMvrzm6hhvcQqPJI7rH6QFx2sgwpJwZad
 9MvVXzW69ZoVAJK8kVrXWNOPZQb9K+XNZeg0fqrs6/yijipxs9d2I9VekR2cjkQkWBPk
 K9tzLpDvIvi+9P1CaYm3zowR/n/0aYz9LD1qPnOvk7BHymoO6/kv8p69j89pnN083FsW
 YppvjuXWQ5vgBFDPWUVCRY3UIIwKumkAVbICwzYVF4YUXD9n2n0K54UfQtd8H49HlQ2a
 r05jua7uSvEns7w95eSANPAnPBfiR40sV0qLiZ+o60tuFSMPwL/uXgIJ2achJJkw0ZGC
 BqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V7KR/FTEokdzwKrC2/sUKsv/XsYihZl9VkunBxEl6zQ=;
 b=fA87WbkamEAvum2dKchB1u5Bl1ZOQZc7UVwU2PUtZe6H5onpBeCLX3RsJO0uMlNhP6
 joNfIMkae13vji0XwEFzuXz73jct/EUtjb1N5K4rT/9YNzk48Xsf9DRBdsVKf/zKpieL
 DExOGEqTKNlb1Zn5YBRUckCUFyFEO+S1fxIygOsFwDRLTuj9g8Czj/q1ejcfGYlYMGJv
 S1XhyDhalfAnH/E8XvmsjH64L/vF0comBhi79lfTlTC25TNhj9e6c62+lFVnfJqkmQS/
 j6WZGxWH/xmB11+BsMwR0xAFX/qW5xXNUzA655M+0OYrcKapVlEMrPFs9VE5SYl14ubn
 7Ejg==
X-Gm-Message-State: APjAAAWAvYhnbW+S+VECHzPqYFZZWGYByGUqhwWI5M1LqCcowzKxLUyc
 hvqo0BrD3P2hX6ej1EiCLenU0PYL
X-Google-Smtp-Source: APXvYqzt/UcJIz51Gcpvpdc/X25P/cakU23EMXzWzsxSE+J8u4qE4NOx1QwLHBmaAo5zGVB9RkxnNw==
X-Received: by 2002:a2e:809a:: with SMTP id i26mr2447939ljg.108.1576077909841; 
 Wed, 11 Dec 2019 07:25:09 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id w19sm1320804lfl.55.2019.12.11.07.25.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 07:25:08 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <bb246fdf-6cba-23e1-ae47-0df3ac5ca3fd@gmail.com>
Date: Wed, 11 Dec 2019 16:25:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191211142209.GC1371@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_072512_013291_0FB55C22 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Inquery
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 11.12.2019 15:22, Daniel Golle wrote:

> As a community, we decided to give our self a set of minimal rules[1].
> And even though it is in the last position, rule #12 "Be nice to each
> other." is meant just as serious as all the other rules.
> 
> So here, not for the first time, you are using language which has the
> only purpose to hurt other people (for which reason ever, it doesn't
> matter). This is therefore a very clear violation to the above
> mentioned rule. You statement "suck it" (guess what) is also an obvious
> and disgusting example of a masculist culture which hurts our community
> as a whole and I strongly believe we should not tolerate that.
> 
> And yes this was a spam mail. And it's even needless to say that
> replying to a spam email in which ever way will always make it worse.
> But that's not the point here and I will not engage in any discussion
> on that matter.
> 
> Please learn to behave or leave us alone.
> 
> [1]: https://openwrt.org/rules

+1

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
