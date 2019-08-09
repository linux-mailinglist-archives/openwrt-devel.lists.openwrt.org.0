Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61EF87B2A
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 15:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QVliRN01mz9mFiJOtiacSq4uGZHl5xuL4rHNOKhPJAI=; b=rgTIOkLLE8BTG2RtGGsWa1fAe
	6+eakBw0H5k/NoVzMgp/UhxSvU3DUg8FKEg43yrcXwrLcJVWDXh0CCoJCY5SOBaC02z8N6Mqbnltb
	TgWuBhGcD+Pa74ZJch2L60sj4Ci1BohariItIfeAGj2hlMCwLAUSO2CrFE1IY+TnWH+crVzOMr8sR
	yPlvspvOtDogl3rO8LlGKjd+3lSjWkHBzD6FPwKwhfrfr58u4MvNL356X0tqJkcuORw+NF8HZPmA1
	4ku6rpmL1eEjpuVBXfGvjjTJNDtLMMQ7qPwx/aQSPnfEk7wFbzoZBy9viZAPowg0CK/oXAF/kSSt9
	aZHoyCHIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4zc-0005Ul-4d; Fri, 09 Aug 2019 13:31:40 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4zT-0005UJ-OV
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 13:31:33 +0000
Received: by mail-ed1-x52b.google.com with SMTP id w5so6390250edl.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 09 Aug 2019 06:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=10NdH9hOiVO3cGdpxbJph3iRQXQ+YxU0lUpxB1bqej4=;
 b=pipUA/DnDESH8RpI0lIwxUKQ2hOGOu8As1bltTRU+5yCRDJX1ab4hD4/TuL+iIkY93
 fu7d6bzlm2nwqXs75qFk/KMZWuIlO2gR3wslx5w8xp3XKhsT4JMa0Np93Ib/bDGSruI/
 2VpISoEwD8D8ZL80144ntCcjXgUiS3LPqxD25BXQ3DaFv4fIk2m6UYSk2R1omHp+8J0h
 rF/kK5lAerMY0G/F4yAV27SsYMfGNckzcllbSwnD9pM36C0BEcAa2E4jpSdbMhrSTojQ
 XI+D51m5No56Znk0UjeFDPyc5RVAo7rBAduZJFkT5oiSZf21fX8id5v5gDMwR71B7/iK
 opcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=10NdH9hOiVO3cGdpxbJph3iRQXQ+YxU0lUpxB1bqej4=;
 b=cj7MhfmSqHLAHXtzYy4nOFFr5b3tWIokDZ9V32GKfl+lxP38PAAm91AG06MQK7jEi+
 koxZ1pvYRpmEsTAG/AeK+bAOoyGJXhAFCBmX8rz6iGr1UdvwKR0SrncN2onzUHPnzrdN
 coRfQOoJahe3Evs/gmPFRJa4r7GY0bdbon7dCfN5HrErTHXEObfno4QOrPLxwmMqgIkJ
 LIkgms5sn0kbN4tLSxpAt8rB5gF6RYYge3OTerezET39x0YCakeMHjC/odjJ/QTQ+CQG
 sGfjX779+V57stLF7aingpZG1u5/0ioN8JYmTOcwEiOR/O/n5DF6f2ZBQOVu/FhhFKsx
 REjA==
X-Gm-Message-State: APjAAAXd1pJbFBjMWXs5CXelyo+2m2/8Za2gR2cAAxH5F01jZWigVP8M
 8Xt780gHpfORpR85W76VEkuwNSyMrrk=
X-Google-Smtp-Source: APXvYqxt4jyLrjbTvWtRpgS5TiEqjsvl4jpEhKfGpwiBN6Yyz8KbBsVzk+FAdgBZlqSQ5Ie9IeKyDQ==
X-Received: by 2002:a17:906:3f87:: with SMTP id
 b7mr17853052ejj.164.1565357489453; 
 Fri, 09 Aug 2019 06:31:29 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id f35sm1072093edb.85.2019.08.09.06.31.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 06:31:28 -0700 (PDT)
To: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
 <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
 <06abfe46-1815-fc36-db01-2cf24bdb734e@ncentric.com>
 <4ca7aa93-1960-1373-7590-1d39c41d8768@candelatech.com>
 <efe239e4-a6dc-1328-d66e-29047290fca1@ncentric.com>
 <f51ea660-d382-7d31-3ecb-f4beddfb997f@candelatech.com>
 <834cede9-27ca-9987-d86e-54335518857b@ncentric.com>
 <44148c8c-2077-1558-83f1-dd59bc483d3f@ncentric.com>
 <9c9445b3-be50-9f2b-5344-9d34ab6bcad4@ncentric.com>
 <5f7fb09e-0113-1cc5-f137-e1ae04ea31d2@candelatech.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <aaf2075a-43bc-d85a-3184-adec7af4226d@ncentric.com>
Date: Fri, 9 Aug 2019 15:31:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5f7fb09e-0113-1cc5-f137-e1ae04ea31d2@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_063131_825470_24A11D92 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDA5LjA4LjE5IDE0OjQ4LCBCZW4gR3JlZWFyIHdyb3RlOgo+IE9uIDgvNi8xOSAyOjI2IEFN
LCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4KPj4+PiBIaSBCZW4sCj4+Pj4KPj4+PiBJIGZpbmFs
bHkgbWFuYWdlZCB0byBnZXQgdG8gc29tZSB0aW1lIHRvIHByb3Blcmx5IHRha2UgYSBsb29rIHVz
aW5nIAo+Pj4+IGEgc2ltcGxlIHNldHVwLgo+Pj4+Cj4+Pj4gQXR0YWNoZWQgYWxsIHJlcXVpcmVk
IGZpbGVzIHRvIHNpbXVsYXRlIHRoZSBpc3N1ZS4KPj4+Pgo+Pj4+IEkgY29tcGlsZWQgdGhlIGxh
dGVzdCBPcGVuV3J0IG1hc3RlciBzdGF0ZSwgKGluY2x1ZGVkIGEgZnVsbCAKPj4+PiB3cGFfc3Vw
cGxpY2FudCBhbmQgaXBlcmYgdG9vbHMpIGFuZCByYW4gdGhlIDIgc3RhcnRzLgo+Pj4+Cj4+Pj4g
QXR0YWNoZWQgYWxzbyBsb2dzIGFzIHNlZW4gZnJvbSBib3RoIGJvYXJkcyBzaW11bHRhbmVvdXNs
eS4KPj4+Pgo+Pj4+Cj4+Pj4gYmFzaWNhbGx5Ogo+Pj4+Cj4+Pj4gLSBJZiB0aGUgYm9hcmRzIGZp
bmFsbHkgZG8gbGluayBhZnRlciBsb3RzIG9mIHRyaWVzLCBpdCB3aWxsIGhhdmUgYSAKPj4+PiA+
MjAwbXMgbGF0ZW5jeSBhbmQgbWF4IHNwZWVkIG9mIGFib3V0IDNNYml0Lgo+Pj4+Cj4+Pj4gLSBU
aGUgd3BhX3N1cCBjb25maWcgZmlsZSBpcyB0aGUgbW9zdCBiYXNpYyBSU04gZW5hYmxlZCBjb25m
aWcuCj4+Pj4KPj4+PiAtIEkgYWxzbyB0cmllZCB0aGUgY3VycmVudCBNYXN0ZXIgc3RhdGUgd2l0
aC93aXRob3V0IGFsbCBjdXN0b20gCj4+Pj4gcGF0aGVzLCBidXQgdGhlIHJlc3VsdCBpcyB0aGUg
c2FtZS4KPj4+Pgo+Pj4+IC0gd3BhX3N1cHAgYWxzbyBuYWdzIGFib3V0IHNvbWUgbWlzc2luZyBJ
RSdzCj4+Pj4KPj4+Pgo+Pj4+IEh3IHVzZWQ6Cj4+Pj4KPj4+PiAtIDJ4IFJCLTkyMlVBR1MgY29u
dGFpbmluZyBhIG9uLWJvYXJkIGFyOTg4eCwgY2FwYWJsZSBvZiAzMGRCbS4KPj4+Pgo+Pj4+IC0g
Mnggc3RhbmRhcmQgNUdIeiBvbW5pIGFudGVubmFlCj4+Pj4KPj4+PiAtIGJvYXJkIHNlcGVyYXRp
b24gZGlzdGFuY2UgY2EgNmZ0Cj4KPiBDYW4geW91IHJlcHJvZHVjZSB3aXRob3V0IGVuY3J5cHRp
b24gZW5hYmxlZD/CoCBUaGF0IG1ha2VzIGl0IGVhc2llciB0byAKPiBkZWJ1Zwo+IHBhY2tldCBz
bmlmZnMuCj4KPiBJZiB5b3UganVzdCBydW4gcGluZyB0cmFmZmljIChvciB2ZXJ5IHNsb3cgc3Bl
ZWQgdGNwL3VkcCksIGRvIHlvdSAKPiBzdGlsbCBzZWUgdGhlIGlzc3VlcyAobGlrZSBoaWdoCj4g
bGF0ZW5jeSwgcGFja2V0IGxvc3MsIHBvb3Igb24tYWlyIGVuY29kaW5nIHJhdGVzLCBldGMpPwo+
CmN1cnJlbnRseSByZWJ1aWxkaW5nIHRoZSBzZXR1cC4gd2lsbCBnZXQgYmFjayBvbiB0aGlzIGFz
YXAuCj4gSWYgSSBidWlsZCB5b3UgYSBkZWJ1Z2dpbmcgZmlybXdhcmUsIGFyZSB5b3UgYWJsZSBh
bmQgd2lsbGluZyB0byAKPiByZXByb2R1Y2UgdGhlIHByb2JsZW0gYW5kCj4gc2VuZCBtZSBkbWVz
ZyBvdXRwdXQgYXMgd2VsbCBhcyBvbi1haXIgcGFja2V0IHNuaWZmPwpWZXJ5IHN1cmUhCj4KPiBQ
cmVmZXJhYmx5LCB3aXRoIGdlbmVyYXRlZCB0cmFmZmljIHdpdGggdW5pcXVlIHBhY2tldCBzaXpl
cyAoaWUsIGV2ZXIgCj4gaW5jcmVhc2luZywgcmFuZG9tLCBvciBzb21ldGhpbmcgbGlrZQo+IHRo
YXQsIHNvIEkgY2FuIG1vcmUgZWFzaWx5IG1hdGNoIHVwIG9uLWFpciBmcmFtZXMgd2l0aCB0aGUg
ZGVidWdnaW5nIAo+IG91dHB1dC4KPgo+Cj4gSSBiZWxpZXZlIHRoYXQgdGhlIGJlYWNvbiBpc3N1
ZXMgYXJlIHByb2JhYmx5IGEgc3ltcHRvbSBvZiBzb21lIG90aGVyIAo+IGZhaWx1cmUgaW4gdGhl
IHRyYW5zbWl0IGFuZC9vcgo+IHJlY2VpdmUgcGF0aC4KPgo+IFRoYW5rcywKPiBCZW4KPgpMZXRz
IGdldCB0aGlzIGZpeGVkISA6LSkKCktvZW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
