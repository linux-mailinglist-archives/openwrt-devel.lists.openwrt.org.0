Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A9CE3ADC
	for <lists+openwrt-devel@lfdr.de>; Thu, 24 Oct 2019 20:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4TCdhVeWczElNip8WFidaBSrZglFrnWZ2G2kbQVZ79w=; b=Jyqy2pvCFg+Ja5up6ovqqJljH
	kXwKLZNQKbzCggXavhZGrzKg65vJjipeMxK1f8RYqiS/uUkyFaZooHrLa8NFaVSgi/6fJ6ZKX7azz
	q3/qSp5qEdbInYxjyO+kD40PmKYN91gB2dYF9pEX7se+k/ZmGqGD7c4EmW8WG+dHKsSML8AWxPmUP
	B33W9FzhqMokwFiuWFCI8J6BthEn9bcSRs1gX+pahNjidHoLU3W3k+2Ti1MD1/h2Nl8AJoqR9XkAv
	cAtfUf/p0nxKg9eIiBbHE/HvklXoPuvrk9vEfpslDIyTsVMe5d1KmVG7Vxa5yHlmDLWvueI7yE5pq
	/5VS5pueA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNhkn-00088k-5m; Thu, 24 Oct 2019 18:22:33 +0000
Received: from rapiduswireless.com ([204.232.164.51]
 helo=825679-web1.circlegraphics.ca)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNhkh-00088D-03
 for openwrt-devel@lists.openwrt.org; Thu, 24 Oct 2019 18:22:28 +0000
Received: from [192.168.124.101] (unknown [184.67.231.46])
 by 825679-web1.circlegraphics.ca (Postfix) with ESMTPA id 1E6E5500A69;
 Thu, 24 Oct 2019 14:22:17 -0400 (EDT)
To: John Crispin <john@phrozen.org>, Daniel Golle <daniel@makrotopia.org>,
 Jo-Philipp Wich <jo@mein.io>
References: <b247e681-6f9a-5e3d-2744-ee5bdb460d1d@rapiduswireless.com>
 <5b5d8f6a-49e9-909a-4663-9ae2555a281a@mein.io>
 <20191024121831.GC1252@makrotopia.org>
 <a9b7a3fe-3896-c38d-b203-f1320c354dbd@phrozen.org>
From: Nick Dennis <ndennis@rapiduswireless.com>
Message-ID: <1a280180-97db-4b91-f20b-7cace39d9b67@rapiduswireless.com>
Date: Thu, 24 Oct 2019 11:22:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a9b7a3fe-3896-c38d-b203-f1320c354dbd@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_112227_162824_D5B9C281 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] How to trigger wifi reload from wifi.lua
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
Content-Type: multipart/mixed; boundary="===============6130404894694535399=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============6130404894694535399==
Content-Type: multipart/alternative;
 boundary="------------4BC0313A6E5AAC3CF81860EB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4BC0313A6E5AAC3CF81860EB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi, all. Thank you. I'll incorporate this and test as soon as i can.

On 10/24/2019 10:46 AM, John Crispin wrote:
> On 24/10/2019 14:18, Daniel Golle wrote:
>> On Thu, Oct 24, 2019 at 01:21:56PM +0200, Jo-Philipp Wich wrote:
>>> Hi,
>>>
>>>> On the Luci GUI, the current behaviour of Save&Apply of changes to the
>>>> items in wifi.lua and wireless_modefreq.htm is to invoke a network
>>>> restart. I would like to to change this behavior to invoke wifi 
>>>> restart
>>>> directly from wifi.lua.
>>>
>>> This is not supported and will confuse the netifd wireless state
>>> tracking. You should instead extend the netifd wireless handlers to
>>> properly deal with updated values.
>>
>> John and me have been working on this in the past months, I'm now doing
>> a final round of rebasing and testing right now.
>> Take a look at my staging tree here:
>> https://git.openwrt.org/?p=openwrt/staging/dangole.git;a=summary
>
> thanks for wrapping this feature up !
>     John
>>
>> What is new here is that hostapd and wpa_supplicant are running
>> permanently and offering a ubus interface to add, remove and modify
>> wifi interfaces. netifd and the scripts previously wrapping around
>> hostapd/wpa_supplicant have been modified to make use of that.
>> You can easily test it by modifying the wireless configuration and
>> calling 'wifi reconf', changes should take effect immediatly without
>> affecting unmodified networks.
>>
>> Currently, there is still one instance of each service for each
>> wiphy, however, once things have been tested a bit more, we can
>> reduce this and use the same service to manage interfaces accross
>> radios -- this should already be supported in hostapd/wpa_supplicant
>> right now, however, we intend to change things one by one to make
>> debugging easier.
>>
>> I'd highly appreciate all reviewing and testing of our changes, I'm
>> planning to merge them into master at the end of next week after
>> posting a comprehensive series on the mailing list tomorrow or monday.
>>
>>
>> Cheers
>>
>>
>> Daniel
>>
>>
>>
>>
>>>
>>>
>>> ~ Jo
>>>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>


--------------4BC0313A6E5AAC3CF81860EB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <font face="Arial">Hi, all. Thank you. I'll incorporate this and
      test as soon as i can.</font><br>
    <br>
    <div class="moz-cite-prefix">On 10/24/2019 10:46 AM, John Crispin
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:a9b7a3fe-3896-c38d-b203-f1320c354dbd@phrozen.org">On
      24/10/2019 14:18, Daniel Golle wrote:
      <br>
      <blockquote type="cite">On Thu, Oct 24, 2019 at 01:21:56PM +0200,
        Jo-Philipp Wich wrote:
        <br>
        <blockquote type="cite">Hi,
          <br>
          <br>
          <blockquote type="cite">On the Luci GUI, the current behaviour
            of Save&amp;Apply of changes to the
            <br>
            items in wifi.lua and wireless_modefreq.htm is to invoke a
            network
            <br>
            restart. I would like to to change this behavior to invoke
            wifi restart
            <br>
            directly from wifi.lua.
            <br>
          </blockquote>
          <br>
          This is not supported and will confuse the netifd wireless
          state
          <br>
          tracking. You should instead extend the netifd wireless
          handlers to
          <br>
          properly deal with updated values.
          <br>
        </blockquote>
        <br>
        John and me have been working on this in the past months, I'm
        now doing
        <br>
        a final round of rebasing and testing right now.
        <br>
        Take a look at my staging tree here:
        <br>
        <a class="moz-txt-link-freetext" href="https://git.openwrt.org/?p=openwrt/staging/dangole.git;a=summary">https://git.openwrt.org/?p=openwrt/staging/dangole.git;a=summary</a>
        <br>
      </blockquote>
      <br>
      thanks for wrapping this feature up !
      <br>
          John
      <br>
      <blockquote type="cite">
        <br>
        What is new here is that hostapd and wpa_supplicant are running
        <br>
        permanently and offering a ubus interface to add, remove and
        modify
        <br>
        wifi interfaces. netifd and the scripts previously wrapping
        around
        <br>
        hostapd/wpa_supplicant have been modified to make use of that.
        <br>
        You can easily test it by modifying the wireless configuration
        and
        <br>
        calling 'wifi reconf', changes should take effect immediatly
        without
        <br>
        affecting unmodified networks.
        <br>
        <br>
        Currently, there is still one instance of each service for each
        <br>
        wiphy, however, once things have been tested a bit more, we can
        <br>
        reduce this and use the same service to manage interfaces
        accross
        <br>
        radios -- this should already be supported in
        hostapd/wpa_supplicant
        <br>
        right now, however, we intend to change things one by one to
        make
        <br>
        debugging easier.
        <br>
        <br>
        I'd highly appreciate all reviewing and testing of our changes,
        I'm
        <br>
        planning to merge them into master at the end of next week after
        <br>
        posting a comprehensive series on the mailing list tomorrow or
        monday.
        <br>
        <br>
        <br>
        Cheers
        <br>
        <br>
        <br>
        Daniel
        <br>
        <br>
        <br>
        <br>
        <br>
        <blockquote type="cite">
          <br>
          <br>
          ~ Jo
          <br>
          <br>
          _______________________________________________
          <br>
          openwrt-devel mailing list
          <br>
          <a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
          <br>
          <a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
          <br>
        </blockquote>
        <br>
        _______________________________________________
        <br>
        openwrt-devel mailing list
        <br>
        <a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
        <br>
        <a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
        <br>
        <br>
      </blockquote>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------4BC0313A6E5AAC3CF81860EB--


--===============6130404894694535399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6130404894694535399==--

