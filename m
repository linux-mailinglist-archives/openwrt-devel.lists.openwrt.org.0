Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A3342559
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 14:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MFbWeIVlUxOAPm8Mo0BJ9XcdqICSiOKDae6773t+T60=; b=sNuWeOQNdFLxn0BVh8yvvfRwe
	kMBFl5EsSsN9/39eLbiACsQ3S2z9kq8rxVqnIdRx/vJPXBGkV8OSqCCln8N9Wtin6QSWbHVWQgNjh
	l+ULaktH90SR51JGYVCPUJouwTaNqe6DBUDuQbOf5NE1+CdNq4WBZTylwgu0ppToEzx6xK61g/zE7
	RhS19LkSlbV2GXhhfbHvi2W7S5YywYD/mwld/1NrrRHx8Z9DLqkXhBpeLS2Io7PkcuC09KrE/7e26
	Ikr3xkCkF7BbL8CRID8vUQ6demyaBH8aIpRQo+N6SamfGzM6uMUcUx28l980IlSpUXKC5gSbVWE25
	iDH1k8fVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2BR-0003ho-Aq; Wed, 12 Jun 2019 12:16:53 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2BG-0003gj-Sm
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 12:16:44 +0000
Received: by mail-ed1-x544.google.com with SMTP id a14so23531687edv.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 05:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=uKleBjZ0cDiYHcY849RNqbdmV9OQDx5K9j7pFtAFKjQ=;
 b=f4GkGadp0Qov4IZPPNWovndN0MkgDzhEXaLSi2IRXz2AostFybkM2jLxev2o2h5Qor
 IG2+yNED9Pbi4Vo9He8BGhkuvKSYDCDlLLpDdDATKZLN7/MrUpLtSKqrrsqucvmiyFJn
 TWMlkPtvBtg9gpQ5uocnaaD143oXgDM9CAeGNidUGDw0vEtImPbfPLyjjg6Ai7qvX2YJ
 KVwXlWWchmytlBJ9GiwyowibQyX7rP3o0M/NDPcrp16cg0doWU7i+5eDqA9c22vNUBJG
 M1NQDa+i2Rw+MxXstoEGkQD1KCWSMQiIIDS+jSZp36HPJvnKGG570RWVxT8qZKWO3oR3
 u6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=uKleBjZ0cDiYHcY849RNqbdmV9OQDx5K9j7pFtAFKjQ=;
 b=BE9dUupPvG4pa2kKsMH26eyL8bGwK44pBlziDXtdF/+0zU0ss8a1RTtH0YwAvDRemB
 kQzavAVIvuLKGTGKyAhdqRkQTGBkjWJnf4ANikcHkuxf3tLzxiRQagZCMFneRcN7ssRl
 iE9T3K7adTAZOJf7DnV0mbqbLqaX+be+aN3IHxfsCzmxROGDqRzt6YKlyG74EJtEA6k1
 RQfujznJ/8d8PZ20p09FxQZLefvSCqUwF2voUx9oAMPuwsEoIfdHmERHFWHfzYbeLc+n
 7RahADyp+J8bRuUpxS725uOo2nxIMnZCIcQmCDCPowbBkglu6gL59X+K8dWgyE0eQUrl
 FHNQ==
X-Gm-Message-State: APjAAAW6+TFdCkM7bs45YMcY2X22JkbOeVnNXAjmX5QIJkC5G3ACgez1
 ALwatLt9vbbGhWv9CyUI6szdVHL9Xhs=
X-Google-Smtp-Source: APXvYqz4NrZfNGsSsf6HObiFXwYwtho2CydtWQTzswSZEvEh2zm/MlKL27pco4fjvi9lIlUz15/3iA==
X-Received: by 2002:a50:8934:: with SMTP id e49mr59737183ede.156.1560341801220; 
 Wed, 12 Jun 2019 05:16:41 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id b25sm1653687eda.38.2019.06.12.05.16.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:16:40 -0700 (PDT)
To: Jonas Gorski <jonas.gorski@gmail.com>
References: <f81aabc8-e8e5-42ea-37ab-2adeb4728896@linux-ipv6.be>
 <CAOiHx=mbuuiL5G1Ay8oedPMhRFsLJZKOP06ZNfxT1ocmyrU3ZQ@mail.gmail.com>
 <6a97128f-4c5a-da4f-3964-0a0fcc20f05b@ncentric.com>
 <CAOiHx=n__bzrdR9PxLj5_hDYkdQST6C8u3ngKFZzmUxuB72gJQ@mail.gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <de1621d0-d4e1-7453-67e5-4c84222a9afc@ncentric.com>
Date: Wed, 12 Jun 2019 14:16:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAOiHx=n__bzrdR9PxLj5_hDYkdQST6C8u3ngKFZzmUxuB72gJQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_051643_072712_EBCCA232 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] KERNEL_PATCHVER in master
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 12.06.19 14:06, Jonas Gorski wrote:
> On Wed, 12 Jun 2019 at 11:02, Koen Vandeputte
> <koen.vandeputte@ncentric.com> wrote:
>>
>> On 11.06.19 23:12, Jonas Gorski wrote:
>>> Hi,
>>>
>>> On Tue, 11 Jun 2019 at 23:08, Stijn Tintel <stijn@linux-ipv6.be> wrote:
>>>> Hi,
>>>>
>>>> Since we now have a 19.07 branch, is it OK to switch KERNEL_PATCHVER for
>>>> targets in master that have 4.19 support to 4.19?
>>> Fine by me. The earlier we start testing 4.19, the faster we can iron
>>> out the kinks, hopefully reducing the maturation phase of the next
>>> release.
>>>
>> Fine for me, but please hold off a little bit until I pushed my kernel
>> bump later today. (already in staging)
>>
>> Otherwise there's a chance I need to redo it ;-)
> This is only about enabling 4.19 by default if supported, not adding
> 4.19 support where missing. So shouldn't affect any kernel bumps.

Very true,

But I'm expecting patches coming in fast when people start testing this.
When this happens, I'll need to rebase this bump continuously. ;-)

Most bumps don't require to much alteration, but this one in staging 
took me a few hours ..

Koen

> Regards
>
> Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
