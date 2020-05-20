Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD271DC2F5
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 01:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a6sQ4KI0S0GQmCXB/IY6+cWQXC2aGUTPu2/fG7skQIM=; b=mYj+85E20BWnULZaaEVDVJlZM
	PaZrAwYx3pO2ocbyySM1/3ewVAdAnpY3gr4wVrbAqXx4G7BZSu0i2hiEB+8OuG5Rld2CSbUp1vJa1
	8IeImy/uW4tmbIQQL/Q0F2jCMEDarmEb58TZIYzYMG1hc/kd6BuvfPPS4W42RPZod0cUwJ8vHuhLZ
	7qyh97N/aJmZ9mnjr1vog8rB/KIRyyfVz0QnElILbrqJVlN64Me+H6ji8tUzhwihm106HxTJmR3L6
	qwcCRou318Fr2B7UnyZ/l9+Y0zQKEIruD/t35xYuSJrgXW17N01Eqq+9/898NpaEAwkqq0yKL3O2T
	tJhW32rTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbY89-0001dS-On; Wed, 20 May 2020 23:28:09 +0000
Received: from mail.as201155.net ([185.84.6.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbY82-0001d0-Kn
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 23:28:05 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:49206
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jbY1M-0005bh-2Q; Thu, 21 May 2020 01:21:08 +0200
X-CTCH-RefID: str=0001.0A782F1D.5EC5BB0A.006D, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=57Gibn6rqCe/qYNKe+wmYwNWVRM4mbHL/Rfgz7aI7hk=; 
 b=Ao9wuuCib9KGz26UvYTk8AcT5OBbmX0onSHWWwGUX3tYlK+olCaioVaMKwbwmQvtfItiCeL9vLJ2BfAX+R50DDe+xLJtYNihgcMoJRlZLgRu7AJjyzzvxITpI6kXFn+vHa+2ndoZo1KipTBI0f/zsly/OHJygxA77M338GD4WGs=;
To: Vincent Wiemann <vincent.wiemann@ironai.com>,
 Sven Eckelmann <sven@narfation.org>, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Ansuel Smith <ansuelsmth@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <2468724.JaAZLprVu6@bentobox>
 <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
 <90f5adcb-488e-96e2-001e-7bf8d175dec6@ironai.com>
 <4df82bd4-cab4-55e2-7885-df86d22aed63@dd-wrt.com>
 <8038d6a0-fa60-3fe9-a2f3-721ec2e365e9@ironai.com>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <74718af1-e597-8168-b2a1-07aa4c271529@dd-wrt.com>
Date: Thu, 21 May 2020 01:21:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
In-Reply-To: <8038d6a0-fa60-3fe9-a2f3-721ec2e365e9@ironai.com>
X-Received: from [2003:c9:3f21:5400:e892:d249:3f1d:4246]
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jbXxK-00014V-Al; Thu, 21 May 2020 01:16:58 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_162802_979435_B0105ABA 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v13] ath10k: add LED and GPIO
 controlling support for various chipsets
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============7988322922664886300=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7988322922664886300==
Content-Type: multipart/alternative;
 boundary="------------FA04462EF0223704AA0CCA15"

This is a multi-part message in MIME format.
--------------FA04462EF0223704AA0CCA15
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Am 20.05.2020 um 21:05 schrieb Vincent Wiemann:
> Hi Sebastian,
>
> On 20.05.20 15:00, Sebastian Gottschall wrote:
>> Am 20.05.2020 um 12:40 schrieb Vincent Wiemann:
>>> Hi Sebastian,
>>>
>>> I don't know why it was dropped, but I can say that the LED control 
>>> code was kind of
>>> annoying me. Even when the LED was turned of, it "flickered" when it 
>>> was set disabled.
>>> Unfortunately I didn't have time to look into it, yet.
>> the led code will just be used if you set a trigger. otherwise it 
>> doesnt touch the gpios.
>> the code itself was written to make use of the led's builtin to 
>> several routers. if you dont set a led trigger, nothing will happen
>>
> Thank you for your quick response... I'll try to reproduce the issue 
> without your patch.
> Maybe it's unrelated and a firmware-specific issue (official QCA9887).
>
> One thing I've seen with your patch is that if I set the ath10k GPIO 
> "steady on" it sometimes
> (quite randomly) turns it off for a fraction of a second. It happens 
> about 3 times a minute.
> It's not a big deal. But maybe it's related to the flickering
> I've observed and possibly also a firmware issue...
my code only sets the gpio state based on the led trigger code. so 
basicly linux is handling it, my code just provides the code to access
the gpios. but i know that the firmware will reset the gpio state on 
certain events like channel reset/channel change.
but as i said. if you dont set a trigger, my code will not control the 
gpio of the chipset in any way and keeps it untouched.
so whatever you see, can only be caused by the firmware itself. what i 
can say is that on qca988x chipsets i have never seen
such a behaviour. the connected led on pin 1 is always off without a 
trigger and with a trigger its doing what it should do. and the 988x is 
basicly
identical to the qca9887, just the amount of antennas is different
>
> Best,
>
> Vincent
>
>
>>> Best,
>>>
>>> Vincent
>>>
>>> On 20.05.20 09:39, Sebastian Gottschall wrote:
>>>> this code is not in use in its original form for ipq4019.
>>>> i have seen that his patch is also dropped from ath.git but is 
>>>> still in use by openwrt.
>>>> could somone clarify the state here and why it was dropped?
>>>> the original patch i wrote does exclude the soc chipsets, but the 
>>>> patch was later reorganized and some part have been rewritten
>>>> so i'm not sure if it covers the scenario mentioned here, which i 
>>>> did take care of
>>>>
>>>> Sebastian
>>>>
>>>> Am 26.02.2019 um 10:16 schrieb Sven Eckelmann:
>>>>> On Friday, 6 April 2018 17:17:55 CET Kalle Valo wrote:
>>>>>> From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
>>>>>>
>>>>>> Adds LED and GPIO Control support for 988x, 9887, 9888, 99x0, 
>>>>>> 9984 based
>>>>>> chipsets with on chipset connected led's using WMI Firmware API.  
>>>>>> The LED
>>>>>> device will get available named as "ath10k-phyX" at sysfs and can 
>>>>>> be controlled
>>>>>> with various triggers.  adds also debugfs interface for gpio 
>>>>>> control.
>>>>>>
>>>>>> Signed-off-by: Sebastian Gottschall <s.gottschall@dd-wrt.com>
>>>>>> Reviewed-by: Steve deRosier <derosier@cal-sierra.com>
>>>>>> [kvalo: major reorg and cleanup]
>>>>>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>>>>> This patch was imported to OpenWrt in commit 61d57a2f88b9 
>>>>> ("mac80211: ath10k
>>>>> add leds support") and broke the 11s support for IPQ4019 and 
>>>>> QCA4019 (5GHz)
>>>>> firmware versions 10.4-3.5.3-00053, 10.4-3.5.3-00057, 10.4-3.6-00140:
>>>>>
>>>>>        [  221.620803] ath10k_pci 0000:01:00.0: wmi command 36967 
>>>>> timeout, restarting hardware
>>>>>        [  221.744056] ieee80211 phy0: Hardware restart was requested
>>>>>        [  225.130829] ath10k_pci 0000:01:00.0: failed to receive 
>>>>> control response completion, polling..
>>>>>        [  226.170824] ath10k_pci 0000:01:00.0: Service connect 
>>>>> timeout
>>>>>        [  226.170871] ath10k_pci 0000:01:00.0: failed to connect 
>>>>> htt (-110)
>>>>>        [  226.252248] ath10k_pci 0000:01:00.0: Could not init 
>>>>> core: -110
>>>>>
>>>>> This was tested on an A62 with following wireless config:
>>>>>
>>>>>        config wifi-device 'radio0'
>>>>>                option type 'mac80211'
>>>>>                option channel '36'
>>>>>                option hwmode '11a'
>>>>>                option path 
>>>>> 'soc/40000000.pci/pci0000:00/0000:00:00.0/0000:01:00.0'
>>>>>                option htmode 'VHT80'
>>>>>                option disabled '0'
>>>>>                option country US
>>>>>             config wifi-device 'radio1'
>>>>>                option type 'mac80211'
>>>>>                option channel '11'
>>>>>                option hwmode '11g'
>>>>>                option path 'platform/soc/a000000.wifi'
>>>>>                option htmode 'HT20'
>>>>>                option disabled '0'
>>>>>                option country US
>>>>>             config wifi-device 'radio2'
>>>>>                option type 'mac80211'
>>>>>                option channel '149'
>>>>>                option hwmode '11a'
>>>>>                option path 'platform/soc/a800000.wifi'
>>>>>                option htmode 'VHT80'
>>>>>                option disabled '0'
>>>>>                option country US
>>>>>             config wifi-iface 'mesh0'
>>>>>            option device 'radio0'
>>>>>            option ifname 'mesh0'
>>>>>            option network 'nwi_mesh0'
>>>>>            option mode 'mesh'
>>>>>            option mesh_id 'TestMesh'
>>>>>            option mesh_fwding '1'
>>>>>            option encryption 'none'
>>>>>             config wifi-iface 'mesh1'
>>>>>            option device 'radio1'
>>>>>            option ifname 'mesh1'
>>>>>            option network 'nwi_mesh1'
>>>>>            option mode 'mesh'
>>>>>            option mesh_id 'TestMesh'
>>>>>            option encryption 'none'
>>>>>                  config wifi-iface 'mesh2'
>>>>>            option device 'radio2'
>>>>>            option ifname 'mesh2'
>>>>>            option network 'nwi_mesh2'
>>>>>            option mode 'mesh'
>>>>>            option mesh_id 'TestMesh'
>>>>>            option mesh_fwding '1'
>>>>>            option encryption 'none
>>>>>
>>>>> Kind regards,
>>>>>       Sven
>>>> _______________________________________________
>>>> openwrt-devel mailing list
>>>> openwrt-devel@lists.openwrt.org
>>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------FA04462EF0223704AA0CCA15
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-text-flowed" style="font-family: -moz-fixed;
      font-size: 13px;" lang="x-unicode">
      <br>
      Am 20.05.2020 um 21:05 schrieb Vincent Wiemann:
      <br>
      <blockquote type="cite" style="color: #007cff;">Hi Sebastian,
        <br>
        <br>
        On 20.05.20 15:00, Sebastian Gottschall wrote:
        <br>
        <blockquote type="cite" style="color: #007cff;">Am 20.05.2020 um
          12:40 schrieb Vincent Wiemann:
          <br>
          <blockquote type="cite" style="color: #007cff;">Hi Sebastian,
            <br>
            <br>
            I don't know why it was dropped, but I can say that the LED
            control code was kind of
            <br>
            annoying me. Even when the LED was turned of, it "flickered"
            when it was set disabled.
            <br>
            Unfortunately I didn't have time to look into it, yet.
            <br>
          </blockquote>
          the led code will just be used if you set a trigger. otherwise
          it doesnt touch the gpios.
          <br>
          the code itself was written to make use of the led's builtin
          to several routers. if you dont set a led trigger, nothing
          will happen
          <br>
          <br>
        </blockquote>
        Thank you for your quick response... I'll try to reproduce the
        issue without your patch.
        <br>
        Maybe it's unrelated and a firmware-specific issue (official
        QCA9887).
        <br>
        <br>
        One thing I've seen with your patch is that if I set the ath10k
        GPIO "steady on" it sometimes
        <br>
        (quite randomly) turns it off for a fraction of a second. It
        happens about 3 times a minute.
        <br>
        It's not a big deal. But maybe it's related to the flickering
        <br>
        I've observed and possibly also a firmware issue...
        <br>
      </blockquote>
      my code only sets the gpio state based on the led trigger code. so
      basicly linux is handling it, my code just provides the code to
      access
      <br>
      the gpios. but i know that the firmware will reset the gpio state
      on certain events like channel reset/channel change.
      <br>
      but as i said. if you dont set a trigger, my code will not control
      the gpio of the chipset in any way and keeps it untouched.
      <br>
      so whatever you see, can only be caused by the firmware itself.
      what i can say is that on qca988x chipsets i have never seen
      <br>
      such a behaviour. the connected led on pin 1 is always off without
      a trigger and with a trigger its doing what it should do. and the
      988x is basicly
      <br>
      identical to the qca9887, just the amount of antennas is different
      <br>
      <blockquote type="cite" style="color: #007cff;">
        <br>
        Best,
        <br>
        <br>
        Vincent
        <br>
        <br>
        <br>
        <blockquote type="cite" style="color: #007cff;">
          <blockquote type="cite" style="color: #007cff;">Best,
            <br>
            <br>
            Vincent
            <br>
            <br>
            On 20.05.20 09:39, Sebastian Gottschall wrote:
            <br>
            <blockquote type="cite" style="color: #007cff;">this code is
              not in use in its original form for ipq4019.
              <br>
              i have seen that his patch is also dropped from ath.git
              but is still in use by openwrt.
              <br>
              could somone clarify the state here and why it was
              dropped?
              <br>
              the original patch i wrote does exclude the soc chipsets,
              but the patch was later reorganized and some part have
              been rewritten
              <br>
              so i'm not sure if it covers the scenario mentioned here,
              which i did take care of
              <br>
              <br>
              Sebastian
              <br>
              <br>
              Am 26.02.2019 um 10:16 schrieb Sven Eckelmann:
              <br>
              <blockquote type="cite" style="color: #007cff;">On Friday,
                6 April 2018 17:17:55 CET Kalle Valo wrote:
                <br>
                <blockquote type="cite" style="color: #007cff;">From:
                  Sebastian Gottschall <a class="moz-txt-link-rfc2396E"
                    href="mailto:s.gottschall@newmedia-net.de">&lt;s.gottschall@newmedia-net.de&gt;</a>
                  <br>
                  <br>
                  Adds LED and GPIO Control support for 988x, 9887,
                  9888, 99x0, 9984 based
                  <br>
                  chipsets with on chipset connected led's using WMI
                  Firmware API.  The LED
                  <br>
                  device will get available named as "ath10k-phyX" at
                  sysfs and can be controlled
                  <br>
                  with various triggers.  adds also debugfs interface
                  for gpio control.
                  <br>
                  <br>
                  Signed-off-by: Sebastian Gottschall <a
                    class="moz-txt-link-rfc2396E"
                    href="mailto:s.gottschall@dd-wrt.com">&lt;s.gottschall@dd-wrt.com&gt;</a>
                  <br>
                  Reviewed-by: Steve deRosier <a
                    class="moz-txt-link-rfc2396E"
                    href="mailto:derosier@cal-sierra.com">&lt;derosier@cal-sierra.com&gt;</a>
                  <br>
                  [kvalo: major reorg and cleanup]
                  <br>
                  Signed-off-by: Kalle Valo <a
                    class="moz-txt-link-rfc2396E"
                    href="mailto:kvalo@codeaurora.org">&lt;kvalo@codeaurora.org&gt;</a>
                  <br>
                </blockquote>
                This patch was imported to OpenWrt in commit
                61d57a2f88b9 ("mac80211: ath10k
                <br>
                add leds support") and broke the 11s support for IPQ4019
                and QCA4019 (5GHz)
                <br>
                firmware versions 10.4-3.5.3-00053, 10.4-3.5.3-00057,
                10.4-3.6-00140:
                <br>
                <br>
                       [  221.620803] ath10k_pci 0000:01:00.0: wmi
                command 36967 timeout, restarting hardware
                <br>
                       [  221.744056] ieee80211 phy0: Hardware restart
                was requested
                <br>
                       [  225.130829] ath10k_pci 0000:01:00.0: failed to
                receive control response completion, polling..
                <br>
                       [  226.170824] ath10k_pci 0000:01:00.0: Service
                connect timeout
                <br>
                       [  226.170871] ath10k_pci 0000:01:00.0: failed to
                connect htt (-110)
                <br>
                       [  226.252248] ath10k_pci 0000:01:00.0: Could not
                init core: -110
                <br>
                <br>
                This was tested on an A62 with following wireless
                config:
                <br>
                <br>
                       config wifi-device 'radio0'
                <br>
                               option type 'mac80211'
                <br>
                               option channel '36'
                <br>
                               option hwmode '11a'
                <br>
                               option path
                'soc/40000000.pci/pci0000:00/0000:00:00.0/0000:01:00.0'
                <br>
                               option htmode 'VHT80'
                <br>
                               option disabled '0'
                <br>
                               option country US
                <br>
                            config wifi-device 'radio1'
                <br>
                               option type 'mac80211'
                <br>
                               option channel '11'
                <br>
                               option hwmode '11g'
                <br>
                               option path 'platform/soc/a000000.wifi'
                <br>
                               option htmode 'HT20'
                <br>
                               option disabled '0'
                <br>
                               option country US
                <br>
                            config wifi-device 'radio2'
                <br>
                               option type 'mac80211'
                <br>
                               option channel '149'
                <br>
                               option hwmode '11a'
                <br>
                               option path 'platform/soc/a800000.wifi'
                <br>
                               option htmode 'VHT80'
                <br>
                               option disabled '0'
                <br>
                               option country US
                <br>
                            config wifi-iface 'mesh0'
                <br>
                           option device 'radio0'
                <br>
                           option ifname 'mesh0'
                <br>
                           option network 'nwi_mesh0'
                <br>
                           option mode 'mesh'
                <br>
                           option mesh_id 'TestMesh'
                <br>
                           option mesh_fwding '1'
                <br>
                           option encryption 'none'
                <br>
                            config wifi-iface 'mesh1'
                <br>
                           option device 'radio1'
                <br>
                           option ifname 'mesh1'
                <br>
                           option network 'nwi_mesh1'
                <br>
                           option mode 'mesh'
                <br>
                           option mesh_id 'TestMesh'
                <br>
                           option encryption 'none'
                <br>
                                 config wifi-iface 'mesh2'
                <br>
                           option device 'radio2'
                <br>
                           option ifname 'mesh2'
                <br>
                           option network 'nwi_mesh2'
                <br>
                           option mode 'mesh'
                <br>
                           option mesh_id 'TestMesh'
                <br>
                           option mesh_fwding '1'
                <br>
                           option encryption 'none
                <br>
                <br>
                Kind regards,
                <br>
                      Sven
                <br>
              </blockquote>
              _______________________________________________
              <br>
              openwrt-devel mailing list
              <br>
              <a class="moz-txt-link-abbreviated"
                href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
              <br>
              <a class="moz-txt-link-freetext"
                href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
              <br>
              <br>
            </blockquote>
          </blockquote>
          _______________________________________________
          <br>
          openwrt-devel mailing list
          <br>
          <a class="moz-txt-link-abbreviated"
            href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
          <br>
          <a class="moz-txt-link-freetext"
            href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
          <br>
        </blockquote>
      </blockquote>
    </div>
  </body>
</html>

--------------FA04462EF0223704AA0CCA15--


--===============7988322922664886300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7988322922664886300==--

