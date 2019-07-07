Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2CD6177B
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jul 2019 22:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4c8fAppkn43FLaV5bCMcZzTQXd60LND749a6tFvY5s=; b=PQYu1v707s7v4U
	lm2zGqw3+/6g4FInS6bjTHyUKzmTd7PvOUPrysjo09SZg/M4wHl88Cx4ttHdggvPuMXDmWBt7DQPJ
	iSAn5vLbg2P2w8aiO2kB+uetIJbJrShYfgd1kQBW3BHJNHs1ZdBu+E6WM6ByW1v2uWqaGiXN9YwFY
	tzua8Sn1nuI7bneGdouhI4H8DYKcJMYaK35k3t9jMY1+vYijghRNrtBtTwv5DZPElFkFKNhu6xYpy
	Dwv8dNbkqiEpn8kh9nvSpPxqMtf+ut+mM0oAIW8FIV296jlPxIfFtKaNPWs2jrxEPtNLq0K9wrW+r
	hpiHmaUs2QP5t2ykVrAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkE3F-0000Ls-Kp; Sun, 07 Jul 2019 20:46:25 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkE2w-0000Km-Lx
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jul 2019 20:46:08 +0000
Received: from [192.168.0.140] (unknown [95.90.181.59])
 (Authenticated sender: mail@aparcar.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 7CAD6100007;
 Sun,  7 Jul 2019 20:45:35 +0000 (UTC)
To: Gio <gio@diveni.re>, openwrt-devel@lists.openwrt.org
References: <dde0fff0-c03a-260f-29a9-4bdabfe301f9@aparcar.org>
 <4478184.D9vJSDGKBi@lifestock>
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Message-ID: <15c30bc8-9393-bf8b-39bf-d492dcc66c92@aparcar.org>
Date: Sun, 7 Jul 2019 22:45:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <4478184.D9vJSDGKBi@lifestock>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_134606_875970_D92AF23D 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC]merge routing repository to packages
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
Cc: Gui Iribarren <gui@altermundi.net>, jo@mein.io,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Moritz Warning <moritzwarning@web.de>,
 "Corinna \"Elektra\" Aichele" <onelektra@gmx.net>,
 Axel Neumann <neumann@cgws.de>, Eloi Carbo <eloicaso@openmailbox.org>,
 Henning Rogge <hrogge@gmail.com>, Markus Stenberg <fingon@iki.fi>,
 Pierre Pfister <pierre.pfister@darou.fr>, Lars Gierth <larsg@systemli.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Gio,

> So either we give commit access to all those people 

parsing the Makefiles for maintainers I find 11 people (CC'ed) without
commit access to packages.git. I'd be okay with granting them access,
currently 57 people have commit access.

To the current maintainers: please share your thoughts of this transfer!

Thanks for your time,
Paul

> or we fall back in the 
> past problematic situation.
>
> Cheers!
> Gio  
>
> On Friday, 5 July 2019 14:26:31 CEST Paul Spooren wrote:
>> Hi all,
>>
>> just as a notification as I don't want to spread the discussion to all
>> kinds of platforms:
>>
>> I proposed (actually jow in 2017) to merge openwrt-routing/packages into
>> openwrt/packages subfolder net.
>>
>> Please find the current discussion at GitHub[0].
>>
>> This is intended to be a transfer, not a fixup. Fixes of legacy/broken
>> Makefiles are welcome in the future!
>>
>> Sunshine,
>> Paul
>>
>> [0]: https://github.com/openwrt/packages/pull/9399
>>
>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
