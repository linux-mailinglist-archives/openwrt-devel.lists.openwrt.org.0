Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FEA12D9DC
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 16:33:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=STnplyWA7dLKj4qFL/2QNTfZDR1y+eqLbnlOFAmROnU=; b=j1zmzek5a726igWRqYfHUVMTB
	fe2+PtLb2LER+PiB+5xJhRPYq+ABwqv4NLRpFNJ/7EtKzJJS80Na8LvFwIta63jOowjTSCoosCz9T
	L/T4ue4nFZnHIvAC/Nq7pYfI3sBTXI0TPqscQi4AfCPvq9jFLUvdrW9XLosRDIAl1QUAI9KEDSW5s
	dRnC8Kp7WC5C52ZG3DVW06XX8XMUKOJOU4OR7QLXPJ8DGGe8Kho5NIKfOK9aeAHQ5TM/GDYNUfO1r
	VlEICtpc7uoocrHWZ5CdvanE6IBFSt+E90Vgtk28kNJU1wmtDPdlqWwUJxSUCdykBMQM6+V0SFhBG
	PGdjc8qDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imJWS-0005xD-KO; Tue, 31 Dec 2019 15:33:28 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imJW7-0005on-QU
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 15:33:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id 15F8FC0351
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 16:23:15 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BmB63YviHP54 for <openwrt-devel@lists.openwrt.org>;
 Tue, 31 Dec 2019 16:23:11 +0100 (CET)
Received: from [192.168.0.114] (unknown [117.2.22.45])
 by mail.softart-ge.com (Postfix) with ESMTPA id 004EFC0249
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 16:23:09 +0100 (CET)
To: openwrt-devel@lists.openwrt.org
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
 <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
 <20191231141559.GP11377@home.paul.comp>
From: Reiner Karlsberg <karlsberg@softart-ge.com>
Message-ID: <a7471bca-f5d3-d0b1-042b-6c3eef7620b1@softart-ge.com>
Date: Tue, 31 Dec 2019 22:23:05 +0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191231141559.GP11377@home.paul.comp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_073308_021683_EC89BE81 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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

Am 31.12.2019 um 21:15 schrieb Paul Fertser:
> Hello gents,
> 
> On Mon, Dec 30, 2019 at 02:41:12PM +0100, Piotr Dymacz wrote:
>>> On 12/30/19 12:42 PM, Jo-Philipp Wich wrote:
>>>> Hi,
>>>>
>>>> given that (binary release) support for 4MB devices will end with 19.07,
>>>> I'd vote for reverting the 4K sector change in ath79 and stick with 64K
>>>> ones as common denominator across the entire target. That will be the
>>>> least invasive and most robust fix.
>>>
>>> +1
>>>
>>> IMHO this change is way to crucial to have it introduced this short before
>>> the release is built. People who built images for their devices can introduce
>>> 4K sectors to their own images. This way, we do't risk breaking boards.
>>
>> +1
> 
> Are any of you using the affected TP-Link boards or ath79/tiny or
> 4 MiB devices in general? What features do you actually pack in them?
> Do you plan to continue doing so past 19.XX release?
> 
> If no users speak up probably it's better to remove all the support
> code altogether to avoid wasting maintainers' time on it?
> 

I am supporting lot of smallest/cheapest TP-Links, running custom built current "tiny" image, or even 15.05, heavily 
shrinked down for 4MB flash.
No special packages installed, besides wireguard or coova-chilli.

All these devices installed in Asia or South America.
Past 19.xx it seems be to OK to drop support.



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
