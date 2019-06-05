Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB4736190
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 18:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QzIcashaa71kPD6Bl9GV37AK8VfcMFOToUDlSzbTsEc=; b=WCDJ23RfZ908UyqcuoH1BXfOi
	D1FGKm92AS5P2kxhSDA5/xTv4tLqi3Am+/CMe7WTdWqoB3LAtf8/X6MJof9hk2LQKFas5qeZ0yFEe
	GZSSPUI8WVv1Pz2z3LfZf/dj717UkA1MLul+hsqBBWRxjQH7EQ542q4SAMojwov5aNXkWKkt9jY/I
	NFxQzb7bc6hg9AySj1hqmn3FQh0RphVK6AIRWygrjIniwqRUds7rq0KvRWqLEPoJLai4bwIXnRwZM
	hitsJAePGq/qH2Vbio8pyU1kOJhCpJ46gCt22SZr7uI7wjBC7vUDUNN4B+r0cdIFCz1whmRZoVdb2
	aO1SxAWyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZ3W-000520-Sg; Wed, 05 Jun 2019 16:46:30 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZ3P-0004q2-I4
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 16:46:25 +0000
Received: from p5dcfbfee.dip0.t-ipconnect.de ([93.207.191.238]
 helo=[192.168.1.159])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hYZ3N-0004Qx-KK; Wed, 05 Jun 2019 18:46:21 +0200
To: Karl Palsson <karlp@tweak.net.au>
References: <20190605161522.24420-1-john@phrozen.org>
 <JMNn3NJqRy2nYkYF55pSH58ED5C73bihLFSS5IxS2342@mailpile>
From: John Crispin <john@phrozen.org>
Message-ID: <2d34f2de-9a00-cffa-8141-a876e6b45a68@phrozen.org>
Date: Wed, 5 Jun 2019 18:46:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <JMNn3NJqRy2nYkYF55pSH58ED5C73bihLFSS5IxS2342@mailpile>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_094623_762536_31933975 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] toolchain: add support for custom
 toolchains
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 05/06/2019 18:42, Karl Palsson wrote:
> John Crispin <john@phrozen.org> wrote:
>> The requirement for being able to add custom src toolchains to
>> the build system has been brought forward by the members of the
>> prpl foundation. This patch tries to address this requirement
>> by allowing a ned folder to be loaded into the tree call
>> toolchain_custom. The subfolders contained within have the same
>> layout as the toolchain folder. By placing optional Makefiles
>> into these subfolders It is possible to override the versions
>> of the various toolchain components aswell as their patch sets
>> and make templates.
>>
>> Signed-off-by: John Crispin <john@phrozen.org>
>> ---
>> diff --git a/toolchain/Config.in b/toolchain/Config.in index
>> 82dddbc209..cad492aa1e 100644
>> --- a/toolchain/Config.in
>> +++ b/toolchain/Config.in
>> @@ -155,6 +155,11 @@ menuconfig EXTERNAL_TOOLCHAIN
>>   		  Specify additional directories searched for libraries (override LD=
FLAGS).
>>   		  Use ./DIR for directories relative to the root above.
>>   =

>> +config CUSTOM_TOOLCHAIN
>> +	depends on DEVEL
>> +
>> +source "toolchain_custom/*.in"
>
> Could we add help text here, based on the commit comment that
> says how this option is to be used?
>
> Sincerely,
> Karl Palsson
>
It is a dummy place holder, overridden by the toolchain_custom/Config.in =

wildcard include. It is not meant to have a help text as its not really =

there until there is a custom toolchain installed. As you know we have =

piles of these transient symbols, none of which have a help text.

 =A0=A0=A0 John




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
