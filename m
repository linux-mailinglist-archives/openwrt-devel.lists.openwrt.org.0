Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4681742AC
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 00:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HEtTbJEB3OIoOja99t0GmT2+YdXTEh80isVb2mEimWw=; b=dP8DKT5lOkceedRxFfxRsMXk6
	opO/kXm3fwJSnffVeAz2g45YZ/5MDkQp+RakRxjJe9EkS5rV8szXADsTsvjQFJxfExAXQ2G25d3rR
	A1mKAyBobjOJmfbP3zC7ZRz4pK0f9ZnRWN71+1hUi8T1FGmS1SgATyqqjJMuEDJCcHnAIiq0G5B1z
	bUA96WdQg6Md5J/1unoW0k1zvNRpqohlygT+g90G4WaU7XxTb8MuyrtIhBl1mSIEPHoYH6iFNiXqn
	chI12BbD1huG+JbcG4ZASvIesHuNh3rvakywkUfpWvIeAtCBQKvfBr34gvlZOysatvaCPvXQlD8oN
	pCeOXDzdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7om1-0001xM-Qr; Fri, 28 Feb 2020 23:10:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7olr-0001wz-E1
 for openwrt-devel@bombadil.infradead.org; Fri, 28 Feb 2020 23:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=J+eaOpYiGeHMv0NnZrGWfcTeF4MlN6yHRVEPh8g+iYk=; b=JgyaC6NX4fBTNdE3s5rrdmjMvu
 HKOA/xVS7YhKOeuDKdckpg53q1z/Nx/KHUjsgXPW9mGYoSROiiI4PDt/DtG30l/XFhT8XqotATScJ
 /aToSHShv14h807CUkIxQsAHLnYVTgBuhuITLL/eOnDZX4SftxxUW/Y9MBaDerAdiA/Y4N7HFWRhA
 FPBV1NR0a1Daix9aRS8ZFI3p7h5dU+/x0m//70PjZuia5xHidiEJqausB09WUxdEMVguICHnpU9Z0
 PUqj/j16QvsoWXZqdNuenDvc/ot39DItBgQ8SOd9ioO0kPNo4KrEK2Zt7PyqpMOmnDopOsk0GbCWT
 EiGjfXzw==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7olm-0001dx-4i
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 23:10:13 +0000
Received: from [168.105.11.245] (unknown [168.105.11.245])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E4846200008;
 Fri, 28 Feb 2020 23:09:49 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20200215232702.2778489-1-mail@aparcar.org>
 <20200228214818.GE2524@meh.true.cz>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <ebc8c13f-169b-ad5d-0a30-0df6ab9b4b1e@aparcar.org>
Date: Fri, 28 Feb 2020 13:09:46 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200228214818.GE2524@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_231010_380485_CB9C298E 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] build: refactor JSON info files
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

>> This PR refactors the JSON creation to store individual files in
>> $(KDIR)/tmp and create an single overview file called `profiles.json` in
>> the target dir.
>>
>> As before, this creation is enabled by default only for the BUILDBOT.
>>
>> To archive the previous behaviour the option JSON_INDIVIDUAL_JSON_INFO
>> can be set.
> Why do we need to preserve that previous behaviour?

Two reasons:

* We have to create those files anyway before a merge because image 
creation happens in parallel, so no single overview can be added to. If 
this is a wrong assumption please step in
* For ImageBuilders it is convenient to have a per profile file. It does 
not add much complexity as the file is simply copied.

I'd be in favor of keeping it if you wouldn't mind. It would be disabled 
for buildbots and users per default.

> FYI those individual files are broken[1] on some buildhosts (8C/16T, E5-2650) anyway:
>
>   Traceback (most recent call last):
>    File "/builds/ynezz/openwrt/scripts/json_add_image_info.py", line 49, in <module>
>      device_info = json.load(json_file)
>    File "/usr/lib/python3.5/json/__init__.py", line 268, in load
>      parse_constant=parse_constant, object_pairs_hook=object_pairs_hook, **kw)
>    File "/usr/lib/python3.5/json/__init__.py", line 319, in loads
>      return _default_decoder.decode(s)
>    File "/usr/lib/python3.5/json/decoder.py", line 342, in decode
>      raise JSONDecodeError("Extra data", s, end)
>   json.decoder.JSONDecodeError: Extra data: line 35 column 2 (char 823)
>
> Would be nice to fix that and making this errors fatal so it's more visible and
> can be fixed sooner then later.
I'm looking into this issue but haven't figured it out yet. Either the 
JSON generation or file writing is broken. The odd thing about it is 
that it also happens if a file is opened only once (as in only a single 
image is created), so it is unlikely an issue with parallel writing into 
a file... If anyone has ideas, please share.
>> +jsonoverviewimageinfo: FORCE
> nitpickbutyoucanusedashorundescoreifyouwantforsuchmultiwordtargetsormakethetargetnameshorter :)
No this is a value comment and no nit pick, I just assumed wrongly that 
dashes/underscores should be avoided as they're not used in the Makefile 
so far.
> 1. https://ynezz.gitlab.io/-/openwrt/-/jobs/447337426/artifacts/logs/target/linux/install.txt

Best,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
