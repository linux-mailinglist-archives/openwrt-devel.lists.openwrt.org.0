Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B758D1F4B73
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 04:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dyz2dp7ZQnvZYvazLuQfFvHF99CYbCfCSVJJWe+m4dY=; b=RvSsbsT6VGs5Ek0TXALoptmEL
	AzeUGQy/rWQkzTKXihD1UzoX6O28X9fmFtrOKn3Ci1gop0lMXsMabUDUKTKZQgy0BikhTLKHzh9oH
	TZzT88qNSq9nUX8mTeBs6H5eS8HFmSODG20faUxfGq7Dr3mtDWqDDdVaJi2l+IMP2rH5VfAmwLcnQ
	ZM6p7tOX7JejgIA4EOIDBomYN/NmcuyV58cx1nJRW74JJySfNgG2l/hcDnXNcy7usA6DJFAdNySnl
	uryExtVoOIU1zAC2S2TBdKkenri53hKsCZ7NzCHBNdfThrI5LKD8ZDJixzqbBJXBCPnvQlC/0pU63
	zKVsNfI9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqTz-0005JX-91; Wed, 10 Jun 2020 02:28:51 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqTs-0005Iu-EE
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 02:28:46 +0000
X-Originating-IP: 72.234.141.215
Received: from [10.137.0.13] (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 5A19020005;
 Wed, 10 Jun 2020 02:28:34 +0000 (UTC)
To: Sven Roederer <devel-sven@geroedel.de>, openwrt-devel@lists.openwrt.org
References: <20200414211447.324042-1-mail@aparcar.org>
 <9826759.b33H7hSvdo@strike>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <d68fecc5-27fe-57fd-e153-601265a6282c@aparcar.org>
Date: Tue, 9 Jun 2020 22:28:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <9826759.b33H7hSvdo@strike>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_192844_608933_410A8A81 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] build,
 imagebuilder: Do not require libncurses-dev
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

Hi Sven,

thanks for testing!

You're right, I tried on a testing VM and had the same issue. I'm afraid 
I had libncurses-dev and libncurses5-dev installed but only removed one 
while testing :(

It should be fixed via https://github.com/openwrt/openwrt/pull/3098

Best,
Paul

On 6/8/20 5:53 PM, Sven Roederer wrote:
> Am Dienstag, 14. April 2020, 23:14:47 CEST schrieb Paul Spooren:
>> The buildroot and SDK both require `libncurses-dev` to be installed on
>> the system, however the ImageBuilder uses precompiled binaries.
>>
>> This patch changes the prerequirements checks to skip the
>> `libncurses-dev` part if running as ImageBuilder.
>>
> Hi Paul,
>
> I gave this today a test on my spare computer, but it still complained about
> the missing libncurses.
> I tested with snapshot imagebuilder (r13519-8a858363b0) with just calling
> "make image"
>
> Any ideas?
>
> Sven
>
>> Signed-off-by: Paul Spooren <mail@aparcar.org>
>> ---
>>   include/prereq-build.mk | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/include/prereq-build.mk b/include/prereq-build.mk
>> index 830a9eff9a..72fb6ad97a 100644
>> --- a/include/prereq-build.mk
>> +++ b/include/prereq-build.mk
>> @@ -51,10 +51,12 @@ $(eval $(call TestHostCommand,working-g++, \
>>   		g++ -x c++ -o $(TMP_DIR)/a.out - -lstdc++ && \
>>   		$(TMP_DIR)/a.out))
>>
>> +ifndef IB
>>   $(eval $(call TestHostCommand,ncurses, \
>>   	Please install ncurses. (Missing libncurses.so or ncurses.h), \
>>   	echo 'int main(int argc, char **argv) { initscr(); return 0; }' | \
>>   		gcc -include ncurses.h -x c -o $(TMP_DIR)/a.out - -lncurses))
>> +endif
>>
>>   ifeq ($(HOST_OS),Linux)
>>     zlib_link_flags := -Wl,-Bstatic -lz -Wl,-Bdynamic
>
>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
