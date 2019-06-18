Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084B64A28E
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 15:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C5wX6PYCvoUpruBSfdKngU4iNKym0VqvACQSvTdmegg=; b=GWJxcSefZQaejWuGk9SfNQS8q
	tL9hkLt5/4AvV2FAFl8X/xPpFJkhN9dgPAfvV8ba+Dmmf+zqsucMbZLA0cViLTzLvndR5s0HszW7K
	OgBKxuvXONzM5kAIcCAkNJYP8Y+vTpX75NLUKwIJY/c7zUl3G8GejqhAi3o4r96Gb5IPpsd5RFd0i
	CMZSq4dA033atoE7t4CYaSMfKs5ti+NfO42efGPi35B8YjCpCtwKsFUVsZDvMFQrmPfQiagvM5jcx
	J1m8RPpC35s6IedWaNhGsDyIGbdesYAKnSYHtbZgR70Kau6bVoakN4s6vxp2Rm93oPLMbYHKo1qO9
	brIwf0qyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEMy-0002mj-8A; Tue, 18 Jun 2019 13:41:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdELi-0002NF-VK
 for openwrt-devel@lists.openwrt.org; Tue, 18 Jun 2019 13:40:37 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so21780146edr.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 18 Jun 2019 06:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=799kJKqBVpg2hSTp4STPbS2fYFgC2ar1x+aKoIPYuH4=;
 b=IbIeAJKU83RyCZsDavVhjBv2eZXnZXm7tWU1T0A4Ge0ztxAB7E41GTRuYadkXBAKo+
 ds9Oq1y+fIwOfoiC7v6PYUsKt54HGV8yWckjb9ZVms2QLD1oAgA0b4ZXHpH2m11oVV8U
 2AjbsAlXdmXAoru5vGvRIIgLojOw9FF5+FGcblkFRsiIfYcKDNZywbGuRDxOCzUyy7es
 bzfUJa3o6leh2arzd5Zsq6WzVG37wXkAJXtJ5oIXpdE92EzmHsjkT3vBx4eO3jvZC3/W
 4XSKk5LjPFbtvOqjCF/KjgJ3Ypkn9CmKvll+hjql/BL1tDG2OOrJYWwEQP9iToErRFWs
 yIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=799kJKqBVpg2hSTp4STPbS2fYFgC2ar1x+aKoIPYuH4=;
 b=f5eqC99gOd991PqNywnf3TLtwi0Kc8NXKE4xHwdFuNxEcms801lAf4nCYCkvbWc7OW
 +Ab0LyntHZW913u4BK7pdcI3EIFwxK54QtERgeG6xhSCEp3PfH4+GHuEwk7X7tUS11Wo
 Ac/2E2MmljGPDGkUC3QagV8+CntXbMobCXSFm7f98xB/wtyDB2MxEljScsiMBzYjT61o
 38f2HarwCB2nsgHywMbBYznFbbMP6UhRGPAVX3Z9aJ6Th2DHueblzvwB79sXrV3lEbZC
 gmlEt8BZBHUK5F65BmkEUbV1A97sFWH7YKwiFmG2bEplZp5z9vABmJE1X9UFEfxJN3VW
 qaXA==
X-Gm-Message-State: APjAAAW+OO8gNQwvqfdB2nkNZ84JJppFwF30DwH9Se0wqaMkDgmLNlLx
 kEnw3ostt/72A4P5+wTXNZKTwQ==
X-Google-Smtp-Source: APXvYqx1fkQGtge8bsH0A9GToiKqc1sK8tR1DR5w/rzjM2DIhyy2mJulZ5UXnKLzRCYeWW4gMRsgUw==
X-Received: by 2002:a50:8974:: with SMTP id f49mr70821204edf.95.1560865232054; 
 Tue, 18 Jun 2019 06:40:32 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id d12sm4574988edp.16.2019.06.18.06.40.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:40:31 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Tautvydas Belgeras <tautvydas.b@8devices.com>
References: <CABwg9-nEmz5Y8N89EU6V4TX0G0SNOYU+TqTCU7KiSr17crqjfQ@mail.gmail.com>
 <20190514144935.GB93050@meh.true.cz>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <45244378-b9d2-d05a-f971-f1be26ae89bd@ncentric.com>
Date: Tue, 18 Jun 2019 15:40:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190514144935.GB93050@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_064035_104747_D2675E37 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Patch to uqmi utility
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
Cc: openwrt-devel@lists.openwrt.org, pepe2k@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE0LjA1LjE5IDE2OjQ5LCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IFRhdXR2eWRhcyBCZWxn
ZXJhcyA8dGF1dHZ5ZGFzLmJAOGRldmljZXMuY29tPiBbMjAxOS0wNS0xNCAxNjoyMDowNV06Cj4K
PiBIaSwKPgo+PiBQYXRjaCBmaXhlcyB1dGlsaXR5IHJldHVybmluZyAiVW5rbm93biBlcnJvciIg
d2hlbiBnZW5lcmF0aW5nIGEgcmVxdWVzdAo+PiBhZnRlciBhIHdhaXQgb2YgYSBmZXcgbWludXRl
cwo+IHF1b3RpbmcgZnJvbSBodHRwczovL29wZW53cnQub3JnL3N1Ym1pdHRpbmctcGF0Y2hlcwo+
Cj4gICAqIGNvbW1pdCBzdWJqZWN0Cj4gICAgIC0gbXVzdCBoYXZlIGEgcHJlZml4IHRoYXQgZGVw
ZW5kcyBmcm9tIHdoYXQgeW91IGFyZSBkb2luZyBpbiB0aGUgY29tbWl0Cj4gICAgIC0gbXVzdCBk
ZXNjcmliZSB3aGF0IHRoZSBjb21taXQgY2hhbmdlcyBhbmQgd2h5IHRoZSBjb21taXQgaXMgbmVj
ZXNzYXJ5Lgo+ICAgICAgIChlLmcuIFtQQVRDSCB1cW1pXSB1cW1pOiBmaXggcmVzcG9uc2UgbWVz
c2FnZSBoYW5kbGluZykKPgo+ICAgKiA2LiBObyBNSU1FLCBubyBsaW5rcywgbm8gY29tcHJlc3Np
b24sIG5vIGF0dGFjaG1lbnRzLCBqdXN0IHBsYWluIHRleHQKPiAgICogMTMuIFRoZSBjYW5vbmlj
YWwgcGF0Y2ggZm9ybWF0IChzdWJqZWN0IHBhcnQpCj4KPj4gZGlmZiAtLWdpdCBhL2Rldi5jIGIv
ZGV2LmMKPj4gaW5kZXggYzI1OTAwYi4uYjBjODI2MiAxMDA2NDQKPj4gLS0tIGEvZGV2LmMKPj4g
KysrIGIvZGV2LmMKPj4gQEAgLTEwMSw2ICsxMDEsMTQgQEAgc3RhdGljIHZvaWQgcW1pX3Byb2Nl
c3NfbXNnKHN0cnVjdCBxbWlfZGV2ICpxbWksIHN0cnVjdCBxbWlfbXNnICptc2cpCj4+ICAgCXVp
bnQxNl90IHRpZDsKPj4KPj4gICAJaWYgKG1zZy0+cW11eC5zZXJ2aWNlID09IFFNSV9TRVJWSUNF
X0NUTCkKPj4gKwl7Cj4+ICsJCWlmIChtc2ctPmZsYWdzICE9IFFNSV9DVExfRkxBR19SRVNQT05T
RSkKPj4gKwkJCXJldHVybjsKPj4gKwl9Cj4+ICsJZWxzZSBpZiAobXNnLT5mbGFncyAhPSBRTUlf
U0VSVklDRV9GTEFHX1JFU1BPTlNFKQo+PiArCQlyZXR1cm47Cj4+ICsKPj4gKwlpZiAobXNnLT5x
bXV4LnNlcnZpY2UgPT0gUU1JX1NFUlZJQ0VfQ1RMKQo+PiAgIAkJdGlkID0gbXNnLT5jdGwudHJh
bnNhY3Rpb247Cj4+ICAgCWVsc2UKPj4gICAJCXRpZCA9IGxlMTZfdG9fY3B1KG1zZy0+c3ZjLnRy
YW5zYWN0aW9uKTsKPiBwbGVhc2UgdHJ5IHRvIGZvbGxvdyBhbHJlYWR5IGVzdGFiaWxpc2hlZCBj
b2Rpbmcgc3R5bGUgaW4gdGhhdCBmaWxlLCBzb21ldGhpbmcKPiBsaWtlOgo+Cj4gICBpZiAoc29t
ZXRoaW5nKSB7Cj4gICB9IGVsc2UgaWYgKG90aGVyKSB7Cj4gICB9Cj4KPiAtLSB5bmV6ego+Ckhp
IFRhdXR2eWRhcwoKV2lsbCB5b3Ugc2VuZCBhIG5ldyBwYXRjaD8KClRoYW5rcywKCktvZW4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
