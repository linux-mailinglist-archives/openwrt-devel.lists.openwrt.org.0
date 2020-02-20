Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE43166642
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 19:27:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezwtQL2cV8Hltv23qL+Gpn3+og6GJlQCQNbR4A54YDU=; b=e+NxIWAwsVxLid
	CG8/S1RzVqSQNbjK80F7QDyJliUke8C8W0oF0DJgqUlgOyBQLjRXYxHCWpHy4ObAb4cqtIZS/5P95
	IErXl0/nB7sFJmxks4bxHLnJqER7Wyee4MQ2IYYj/MVKYgYAwQQnstSiJoiVo6bug/8sZYTJ2nilm
	9DBq/j/hlEzwMswDgRUSb8e/P1hkGVlEsSyy0m+ix1fMMe9W0y/XkbFXXOXuLnM22JCSNZEnAzuX0
	9oYafy7munISI9x/tyUJGztD9a7u7ZZgqgND8KlF6akWpaVWy0v+FMvF7O9xecFWnyR+2b4v/l8h8
	j3LOL1RTytxeXEN0Hu7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qXi-0007a4-Nd; Thu, 20 Feb 2020 18:27:22 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qXa-0007Z4-EU
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 18:27:15 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9so1861784plo.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 10:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=/hu58lspFCsoZlk5Ug5QeYS1I/J7Np9cfOjZETESJjo=;
 b=e/36l1tylNlhgiwsnQ0YG6pQrgFGpcvSdTJ78cCPHVOeBCpiS+zsvUILoZWGtv6AwF
 OZgfWmm03kGkJGvTqIlvhv6Vbq8yGFriU0Gr+CT90QqaCZYNZUddArQReW1LwAncBGep
 2c8e+sHqcYh5GeGoZMyeFC6YF33ZsRkRZhPLlQSYVefjcBLXoCVLDVejubXTtPOxQ61K
 aEYXkuIkkpPlKIN9buH2U23DfXJ43/gvTZm5WCSi7zSo899HwVI05mPDh2ZV31jjTc7a
 F80QIsHQ90tPm76N3dcUJC9t2S1UaP5B/Le6LLjGjxo1kAvVCMddy/hUvxWL48jBU6nL
 DJMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=/hu58lspFCsoZlk5Ug5QeYS1I/J7Np9cfOjZETESJjo=;
 b=PxHv7nENJL0Cq6kfpJDBJxS2KGXGujQOddlAUe5WEusCsid5VxNfx1XDpH9KC/llyS
 rhXwy/W8NQ0bqvst15wdftTIbT8aZx3glzGdtnDpW5j4m4KWw1rEw6YHB69bjepWow6x
 EsaPBze3G0Vpx/WDn2Hakjqj2wLFXc1R1fxW10UZCEEdUmhx1Timlf8sVrCEpVwCJpPI
 3HEDyk77fBDjcR/3m6xxe6dTayxvGuLuScKAmOXPli8mxC3m5xMbN0+jSd9Un0fsywAL
 pi7AsIVA3nkrIhN8GG7G0FfHH80h/lHLFsnWMB7LZR9doQO0wJMTVmRHSl46wfrvVyv6
 F3Ng==
X-Gm-Message-State: APjAAAViQp7Nvdo5yxlRhFAv0TVHbIxMSgk1/RIktUWKR0A61ONHuyJu
 n7rXMq8QPyT3V6dtR8zGXknIvWp6
X-Google-Smtp-Source: APXvYqyGZtaWhCw+zZ5HGimbkpjtCfqXhSLKcrmiQAB2j0IUujkqgqIJfu+miGS6l0yIDSWaVw0kug==
X-Received: by 2002:a17:90b:1110:: with SMTP id
 gi16mr4885286pjb.110.1582223232472; 
 Thu, 20 Feb 2020 10:27:12 -0800 (PST)
Received: from [192.168.216.107] ([122.179.224.167])
 by smtp.gmail.com with ESMTPSA id s130sm301367pfc.62.2020.02.20.10.27.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 10:27:11 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
From: Nishant Sharma <codemarauder@gmail.com>
Message-ID: <086ccf28-f2b4-b3d5-edfb-7db075a8c6a4@gmail.com>
Date: Thu, 20 Feb 2020 23:57:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_102714_488298_2386F9AB 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:632 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [codemarauder[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Mikrotik RB951Ui-2HnD: Wireless config missing on
 new hardware
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

[Unable to post on forum (error 502 bad gateway), hence posting here.]

It seems something has changed in the hardware. I have "Type: INTL"
devices here.

I have already tried the following firmwares:

1. custom compiled 19.07.0
2. openwrt 19.07.0
3. custom compiled 18.06.2
4. custom compiled 17.02.4

I have tried these firmware on multiple (5+) old and new devices.

On newer hardware, wifi config only touches the /etc/config/wireless and
there is no configuration inside.

Below is the output on older hardware with 17.02.4, which has wifi working:

```
root@HBCC2DE061D01A:~# iw dev wlan0 info
Interface wlan0
        ifindex 6
        wdev 0x1
        addr cc:2d:e0:61:d0:25
        type managed
        wiphy 0
        txpower 20.00 dBm

root@HBCC2DE061D01A:~# dmesg | grep ath
[   22.885162] ath: EEPROM regdomain: 0x0
[   22.885182] ath: EEPROM indicates default country code should be used
[   22.885191] ath: doing EEPROM country->regdmn map search
[   22.885212] ath: country maps to regdmn code: 0x3a
[   22.885224] ath: Country alpha2 being used: US
[   22.885233] ath: Regpair used: 0x3a

root@HBCC2DE061D01A:/sys/devices/platform# ls -1
ag71xx-mdio.1
ag71xx.0
ag71xx.1
alarmtimer
ar934x-nfc
ar934x_wmac
ath79-gpio
ath79-wdt
ehci-platform
leds-gpio
regulatory.0
serial8250
serial8250.0
uevent

```

And below is the output on new hardware with 17.02.4:

```
root@OpenWrt:~# iw dev wlan0 info
command failed: No such device (-19)

root@OpenWrt:~# dmesg | grep ath
root@OpenWrt:~#

root@OpenWrt:/sys/devices/platform# ls -1
ag71xx-mdio.1
ag71xx.0
ag71xx.1
alarmtimer
ar934x-nfc
ath79-gpio
ath79-wdt
ehci-platform
leds-gpio
regulatory.0
serial8250
serial8250.0
uevent

```

Unloading or loading ath9k module adds following line to dmesg:

```
root@OpenWrt:~# dmesg | grep ath
[ 1175.108742] ath9k: ath9k: Driver unloaded

```

The above behaviour is same with 19.07.0 on the new hardware.

I do not see ar934x_wmac in /sys/devices/platform on new hardware, but
it is present on older hardware.

Does anyone has a clue about what could be going on?

I have access to both the types of numerous devices, so I can provide
further debugging information as and when required.

Thanks in advance.

Regards,
Nishant

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
