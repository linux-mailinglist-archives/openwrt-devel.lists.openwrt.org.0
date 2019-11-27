Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E0810BB9E
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 22:15:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rwC8OsObFyVy/keLvvTyWDJ533f3Cp2ncjUHss1chAY=; b=tuHgYElRB/0Cjhc+6meop8rT1
	qumQ0s0NGEEpeeixVE6zVEyySSwfCXiAlj5D+GTfu/AP6kIGwqTk+UXvcOy6yw5m9bVXra3kiQUIJ
	+8aCMmTE19woRRn3jt1zRA14BNbbRvlIOgx0pPLdJkO3HgQ5rzJLjCe540rmrBdqqll1TKMZSORBe
	HuCULSeqv/aQ0lV3LyidYkCHrn5MCEJvYx11z63g9wgMJd0q/t58Leb2e7QxuG/f7FqUCI5l0bt2Y
	WVlvu24K4+2S3W7uItu7Zl9h62x2yhMdMJIyZiZ6ZYDPWbwsBUuy4V2+eGnL8MuBuge3+XX2QFRNx
	94Wx6SrZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia4eN-0004eZ-Je; Wed, 27 Nov 2019 21:15:03 +0000
To: daniel@makrotopia.org
References: <44fc758a-3302-2083-f9b9-106ca500fa1a@mail.ru>
 <mailman.14105.1574804672.2486.openwrt-devel@lists.openwrt.org>
 <20191126221508.GA6011@makrotopia.org>
Date: Wed, 27 Nov 2019 22:14:44 +0100
In-Reply-To: <20191126221508.GA6011@makrotopia.org>
MIME-Version: 1.0
Message-ID: <mailman.14315.1574889297.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "blu.italia--- via openwrt-devel" <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: blu.italia@mail.ru
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] LEDE > OpenWrt > TP-Link TL-WDR4900 1.0
Content-Type: multipart/mixed; boundary="===============6163155798815020956=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6163155798815020956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6163155798815020956==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from smtp34.i.mail.ru ([94.100.177.94])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia4eE-0004dO-5T
	for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 21:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail2;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject; bh=sitcKojI0+fdbx5VqcaxucxvXl1JKkWHEThmD0zxLqQ=;
	b=bdcqX3kgCh0Se+LOP8b8bmKxVJMmPZ1L5b6t/QfP8GAD30zijpwEb/1rbbMBgLWXn9fq7if6P5FwkLB4PZYR0DxuE0qoHCZVuzVsEhQGJl5YKcbERF5GelPMHPZ1lspuJ8vEw1GxeIKbWSusdnPmRA65fCLyd7OBQiPjEzbM+RE=;
Received: by smtp34.i.mail.ru with esmtpa (envelope-from <blu.italia@mail.ru>)
	id 1ia4eA-0008Fw-Oc; Thu, 28 Nov 2019 00:14:51 +0300
Subject: LEDE > OpenWrt > TP-Link TL-WDR4900 1.0
To: daniel@makrotopia.org
Cc: openwrt-devel@lists.openwrt.org
References: <44fc758a-3302-2083-f9b9-106ca500fa1a@mail.ru>
 <mailman.14105.1574804672.2486.openwrt-devel@lists.openwrt.org>
 <20191126221508.GA6011@makrotopia.org>
From: blu.italia@mail.ru
Message-ID: <1810970f-b329-5fbf-b26b-2e94e535b0a3@mail.ru>
Date: Wed, 27 Nov 2019 22:14:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101
 Thunderbird/71.0
MIME-Version: 1.0
In-Reply-To: <20191126221508.GA6011@makrotopia.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit
Authentication-Results: smtp34.i.mail.ru; auth=pass smtp.auth=blu.italia@mail.ru smtp.mailfrom=blu.italia@mail.ru
X-77F55803: 6115F4D8777AF1675A78504BD2AC29419866B4965ABE1B7A87DC8AD6EEF340D5B82C8767B977FB65422B385222E359B5
X-7FA49CB5: 0D63561A33F958A5D0E667D66A1E25D0351A9810D04F94EFBBB5AE1294DD43BE8941B15DA834481FA18204E546F3947CEDCF5861DED71B2F389733CBF5DBD5E9C8A9BA7A39EFB7666BA297DBC24807EA117882F44604297287769387670735209ECD01F8117BC8BEA471835C12D1D977C4224003CC8364767815B9869FA544D8D32BA5DBAC0009BE9E8FC8737B5C2249837B2A9411684D0776E601842F6C81A12EF20D2F80756B5F5C318D1F9ECD513A76E601842F6C81A127C277FBC8AE2E8BC2CB5B2DDA9338FB3AA81AA40904B5D99449624AB7ADAF37F910319684D6E05D725E5C173C3A84C322275D389A24191CAACF809BF0ACB51FD2457FAF19517CF2C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F2AF38021CC9F462D574AF45C6390F7469DAA53EE0834AAEE
X-Mailru-Sender: 079D9018644807C7F9674D1B98550E2C500C70641D66CF232AC06A8DE8EDB2207D02C0A1B8F0975FEA7B48041C1ABBA6C436427D37DF3292AC7ADC0013CEB81BE08AD13A84CB394570252D6EF6D78D1B715EC054F9A9AD9C0DA7A0AF5A3A8387
X-Mras: OK
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_131454_564792_121009B4 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [94.100.177.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (blu.italia[at]mail.ru)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 GB_FREEMAIL_DISPTO     Disposition-Notification-To/From or
                             Disposition-Notification-To/body contain
                             different freemails

Hello Daniel,

thanks for your help. At first, here are the specifications of my router:

Model: TP-Link TL-WDR4900 v1
Architecture: e500v2
Firmware Version: OpenWrt 19.07.0-rc1 r10649-c4fdb377a2 / LuCI 
openwrt-19.07 branch git-19.309.76540-c0e73d3
Kernel Version: 4.14.151

Second: Please can you tell me, how I can share my /etc/config/wireless 
and /etc/config/network with you?

Regards
Falko
    ⁮
    ⁮

Am 26.11.2019 um 23:15 schrieb daniel@makrotopia.org:
> Hi Falko,
> 
> On Tue, Nov 26, 2019 at 10:44:12PM +0100, blu.italia--- via openwrt-devel wrote:
>> The sender domain has a DMARC Reject/Quarantine policy which disallows
>> sending mailing list messages using the original "From" header.
>>
>> To mitigate this problem, the original message has been wrapped
>> automatically by the mailing list software.
> 
>> Date: Tue, 26 Nov 2019 22:44:12 +0100
>> From: blu.italia@mail.ru
>> To: openwrt-devel@lists.openwrt.org, contact@openwrt.org
>> Subject: LEDE > OpenWrt > TP-Link TL-WDR4900 1.0
>> User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0)
>>   Gecko/20100101 Thunderbird/71.0
>>
>> Hello Team!
>>
>> Since the last update from 18.06 to 19.07.0-rc1 my 5 GHz radio / wireless
>> controller doesn't work. Please can you help me (log in the attachment)?
> 
> Not having spaces as part of the ifname might help. I'm quite surprised
> that worked with 18.06... Probably we should do some more sanity-
> checking when entering ifnames via LuCI...
> 
> Can you share your /etc/config/wireless and /etc/config/network as well?
> (make sure to remove passwords before posting!)
> 
> 
> Cheers
> 
> 
> Daniel
> 
> .
> 


--===============6163155798815020956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6163155798815020956==--
