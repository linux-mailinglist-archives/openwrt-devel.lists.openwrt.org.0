Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310AE87C68
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 16:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S9F7TZiPESaJ3MROaiR8dgo6VJNqkmHmYO+eLenWyEs=; b=uRPmdFAo9IcXJ1CMbsPm5O7WK
	LuS1LohdPmcmFlIvcVawhsbExl70ssvDARcIuvX7BQcG+TgwlQkVWPhI2zPpsfrqxtVoDyBoRUzfC
	2bC1nT9S8Bl4MG/RX0zC4qvGIAVSkyp/2BVXS9pyUSvxsEO6G6siDQ1rhtDPXm7X6NmT7gIhRdWu1
	B6IzlPGAxo4WASY+SEUIudm1NCl8HriBTDe7ieXREePmneLTOcWAfUuXUucE+0c3M1pP5aZbJngsO
	1IuS6oNE34lM1tTnmEyjBT+eUOkqrsyetUF1t3HoEknNsv0s4vjBsE/AmpEYKHVjWApCrV/GuWkNG
	CDcLddrdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5er-0001bT-Et; Fri, 09 Aug 2019 14:14:17 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5ej-0001b7-Pn
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 14:14:11 +0000
Received: by mail-ed1-x52b.google.com with SMTP id h8so6975937edv.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 09 Aug 2019 07:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=hctECnlgAlIrfzZlBw/+J+AzdENF0jIuNbMs82/IHlw=;
 b=MzK+2RawiiqgPk2OuK6hffhct2o/gjCp37F3wj9pTOIbVfE+uOTl0yVj7PcGvDGTBC
 JDAFuE944S0wO8vqRfSP/GfsiEtmmpXrTfJGvJ2pP5QM7shQ1BrszoXW4CT7WjAldloS
 jXy3o9PQysZVMQsQiTOHWmSc1ns9OtUA2T7vtaBrpenagS4TB8pbo7EzJFkqHCqa3sxL
 XQ7E8WXRoYeLE9c3k+kb+l8ewkJT8hnr7ED8gwrLEJrFfUeWs/T56vj4wk+6x/NZa2z1
 iEQGTJBADchYZDGa67aIvFpujZwnfQwaUNjVU2CDr9NVU8HXLzC6vFDXnksjq4ysuPr/
 K3hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=hctECnlgAlIrfzZlBw/+J+AzdENF0jIuNbMs82/IHlw=;
 b=t+9q+LXc1Y8fnuierfTC3Z4Bb/adgNKqyjKtiFfFjuTzZ1gLv5CSMHxeqlnyGufd+J
 psbAZQiF5/fMIJp3OZ9RaugGVh+KWHD2inbHFh8RXtKdVccpABWdURk3+msf3PmGIHkB
 oNdiH7i0V6C1n+IkbL9z4TcTdx8CQ2GPT7fc4Jn9piOvh0ARPBKTUuHJMvEEIBtqgAbj
 7YbrkXYXc2zpCp0lVGuNmGRBg6HQ02PjAh545ldIUxY0tZvSK1xUUyXbmoOJsBNpAVhP
 54cktO/1vAOhjvwhBumyG6dgT/C8qlPFcTn7FAe0C4WuCGtAZp0ml24XXADoYBvoRe2d
 iSjw==
X-Gm-Message-State: APjAAAW99tOq1LHxHTiKjvW0vKQ+dt0mm1avpGorg/GmgyOxqm3qQYpY
 Wkk163ubsOvHPHUEO6aD7yqqzTiEAis=
X-Google-Smtp-Source: APXvYqyBeHtaz2NZVeyNG3+g1PTGiE6sgVzHa+F3w4C1dKQhBWPWcImNenv/RiMGET1JhPUVTHOgWQ==
X-Received: by 2002:a17:906:7681:: with SMTP id
 o1mr17764707ejm.207.1565360048105; 
 Fri, 09 Aug 2019 07:14:08 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id o11sm16112777ejd.68.2019.08.09.07.14.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 07:14:07 -0700 (PDT)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
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
 <aaf2075a-43bc-d85a-3184-adec7af4226d@ncentric.com>
Message-ID: <4e49082d-91f6-ce30-cba5-cbb80edebccb@ncentric.com>
Date: Fri, 9 Aug 2019 16:14:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <aaf2075a-43bc-d85a-3184-adec7af4226d@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_071409_841751_C19FE134 
X-CRM114-Status: GOOD (  17.39  )
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

Ck9uIDA5LjA4LjE5IDE1OjMxLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4KPiBPbiAwOS4wOC4x
OSAxNDo0OCwgQmVuIEdyZWVhciB3cm90ZToKPj4gT24gOC82LzE5IDI6MjYgQU0sIEtvZW4gVmFu
ZGVwdXR0ZSB3cm90ZToKPj4KPj4+Pj4gSGkgQmVuLAo+Pj4+Pgo+Pj4+PiBJIGZpbmFsbHkgbWFu
YWdlZCB0byBnZXQgdG8gc29tZSB0aW1lIHRvIHByb3Blcmx5IHRha2UgYSBsb29rIAo+Pj4+PiB1
c2luZyBhIHNpbXBsZSBzZXR1cC4KPj4+Pj4KPj4+Pj4gQXR0YWNoZWQgYWxsIHJlcXVpcmVkIGZp
bGVzIHRvIHNpbXVsYXRlIHRoZSBpc3N1ZS4KPj4+Pj4KPj4+Pj4gSSBjb21waWxlZCB0aGUgbGF0
ZXN0IE9wZW5XcnQgbWFzdGVyIHN0YXRlLCAoaW5jbHVkZWQgYSBmdWxsIAo+Pj4+PiB3cGFfc3Vw
cGxpY2FudCBhbmQgaXBlcmYgdG9vbHMpIGFuZCByYW4gdGhlIDIgc3RhcnRzLgo+Pj4+Pgo+Pj4+
PiBBdHRhY2hlZCBhbHNvIGxvZ3MgYXMgc2VlbiBmcm9tIGJvdGggYm9hcmRzIHNpbXVsdGFuZW91
c2x5Lgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBiYXNpY2FsbHk6Cj4+Pj4+Cj4+Pj4+IC0gSWYgdGhlIGJv
YXJkcyBmaW5hbGx5IGRvIGxpbmsgYWZ0ZXIgbG90cyBvZiB0cmllcywgaXQgd2lsbCBoYXZlIAo+
Pj4+PiBhID4yMDBtcyBsYXRlbmN5IGFuZCBtYXggc3BlZWQgb2YgYWJvdXQgM01iaXQuCj4+Pj4+
Cj4+Pj4+IC0gVGhlIHdwYV9zdXAgY29uZmlnIGZpbGUgaXMgdGhlIG1vc3QgYmFzaWMgUlNOIGVu
YWJsZWQgY29uZmlnLgo+Pj4+Pgo+Pj4+PiAtIEkgYWxzbyB0cmllZCB0aGUgY3VycmVudCBNYXN0
ZXIgc3RhdGUgd2l0aC93aXRob3V0IGFsbCBjdXN0b20gCj4+Pj4+IHBhdGhlcywgYnV0IHRoZSBy
ZXN1bHQgaXMgdGhlIHNhbWUuCj4+Pj4+Cj4+Pj4+IC0gd3BhX3N1cHAgYWxzbyBuYWdzIGFib3V0
IHNvbWUgbWlzc2luZyBJRSdzCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEh3IHVzZWQ6Cj4+Pj4+Cj4+Pj4+
IC0gMnggUkItOTIyVUFHUyBjb250YWluaW5nIGEgb24tYm9hcmQgYXI5ODh4LCBjYXBhYmxlIG9m
IDMwZEJtLgo+Pj4+Pgo+Pj4+PiAtIDJ4IHN0YW5kYXJkIDVHSHogb21uaSBhbnRlbm5hZQo+Pj4+
Pgo+Pj4+PiAtIGJvYXJkIHNlcGVyYXRpb24gZGlzdGFuY2UgY2EgNmZ0Cj4+Cj4+IENhbiB5b3Ug
cmVwcm9kdWNlIHdpdGhvdXQgZW5jcnlwdGlvbiBlbmFibGVkP8KgIFRoYXQgbWFrZXMgaXQgZWFz
aWVyIAo+PiB0byBkZWJ1Zwo+PiBwYWNrZXQgc25pZmZzLgo+Pgo+PiBJZiB5b3UganVzdCBydW4g
cGluZyB0cmFmZmljIChvciB2ZXJ5IHNsb3cgc3BlZWQgdGNwL3VkcCksIGRvIHlvdSAKPj4gc3Rp
bGwgc2VlIHRoZSBpc3N1ZXMgKGxpa2UgaGlnaAo+PiBsYXRlbmN5LCBwYWNrZXQgbG9zcywgcG9v
ciBvbi1haXIgZW5jb2RpbmcgcmF0ZXMsIGV0Yyk/Cj4+Cj4gY3VycmVudGx5IHJlYnVpbGRpbmcg
dGhlIHNldHVwLiB3aWxsIGdldCBiYWNrIG9uIHRoaXMgYXNhcC4KPj4gSWYgSSBidWlsZCB5b3Ug
YSBkZWJ1Z2dpbmcgZmlybXdhcmUsIGFyZSB5b3UgYWJsZSBhbmQgd2lsbGluZyB0byAKPj4gcmVw
cm9kdWNlIHRoZSBwcm9ibGVtIGFuZAo+PiBzZW5kIG1lIGRtZXNnIG91dHB1dCBhcyB3ZWxsIGFz
IG9uLWFpciBwYWNrZXQgc25pZmY/Cj4gVmVyeSBzdXJlIQo+Pgo+PiBQcmVmZXJhYmx5LCB3aXRo
IGdlbmVyYXRlZCB0cmFmZmljIHdpdGggdW5pcXVlIHBhY2tldCBzaXplcyAoaWUsIGV2ZXIgCj4+
IGluY3JlYXNpbmcsIHJhbmRvbSwgb3Igc29tZXRoaW5nIGxpa2UKPj4gdGhhdCwgc28gSSBjYW4g
bW9yZSBlYXNpbHkgbWF0Y2ggdXAgb24tYWlyIGZyYW1lcyB3aXRoIHRoZSBkZWJ1Z2dpbmcgCj4+
IG91dHB1dC4KPj4KPj4KPj4gSSBiZWxpZXZlIHRoYXQgdGhlIGJlYWNvbiBpc3N1ZXMgYXJlIHBy
b2JhYmx5IGEgc3ltcHRvbSBvZiBzb21lIG90aGVyIAo+PiBmYWlsdXJlIGluIHRoZSB0cmFuc21p
dCBhbmQvb3IKPj4gcmVjZWl2ZSBwYXRoLgo+Pgo+PiBUaGFua3MsCj4+IEJlbgo+Pgo+IExldHMg
Z2V0IHRoaXMgZml4ZWQhIDotKQo+Cj4gS29lbgo+CgpKdXN0IHRlc3RlZCB3aXRoIGVuY3J5cHRp
b24gZGlzYWJsZWQ6CgpzdW1tYXJ5OgoKLSBzcGVlZCBpcyBsb29raW5nIGdvb2QuICh+MTMwTWJp
dC9zKSBhbHNvIGxpbmsgc3BlZWQgaXMgODY2TWJpdCAoMngyIHJhZGlvKQoKLSBpdyB3bGFuMCBj
b25maXJtcyA4ME1IeiBjaGFubmVsCgotIE9ubHkgYSBzaW5nbGUgc3BsYXQgc2Vlbiwgbm8gYmVh
Y29uIGVycm9ycwoKLSBub24taHR0IGZpcm13YXJlCgoKZG1lc2c6wqAgaHR0cHM6Ly9wYXN0ZWJp
bi5jb20vWUxiSkNESmMKCgpjb25maWdzOgoKbmV0d29yaz17CiDCoMKgwqDCoMKgwqDCoCBzc2lk
PSJpYnNza29lbiIKIMKgwqDCoMKgwqDCoMKgIGtleV9tZ210PU5PTkUKIMKgwqDCoMKgwqDCoMKg
IG1vZGU9MQogwqDCoMKgwqDCoMKgwqAgZnJlcXVlbmN5PTU3NDUKfQoKaXdpbmZvOgoKd2xhbjDC
oMKgwqDCoCBFU1NJRDogImlic3Nrb2VuIgogwqDCoMKgwqDCoMKgwqDCoMKgIEFjY2VzcyBQb2lu
dDogQjg6Njk6RjQ6Q0Y6QzY6MDUKIMKgwqDCoMKgwqDCoMKgwqDCoCBNb2RlOiBBZC1Ib2PCoCBD
aGFubmVsOiAxNDkgKDUuNzQ1IEdIeikKIMKgwqDCoMKgwqDCoMKgwqDCoCBUeC1Qb3dlcjogMzAg
ZEJtwqAgTGluayBRdWFsaXR5OiA3MC83MAogwqDCoMKgwqDCoMKgwqDCoMKgIFNpZ25hbDogLTUg
ZEJtwqAgTm9pc2U6IC0xMDIgZEJtCiDCoMKgwqDCoMKgwqDCoMKgwqAgQml0IFJhdGU6IDg2Ni43
IE1CaXQvcwogwqDCoMKgwqDCoMKgwqDCoMKgIEVuY3J5cHRpb246IHVua25vd24KIMKgwqDCoMKg
wqDCoMKgwqDCoCBUeXBlOiBubDgwMjExwqAgSFcgTW9kZShzKTogODAyLjExbmFjCiDCoMKgwqDC
oMKgwqDCoMKgwqAgSGFyZHdhcmU6IDE2OEM6MDAzQyAxOUI2OkQwNDIgW0dlbmVyaWMgTUFDODAy
MTFdCiDCoMKgwqDCoMKgwqDCoMKgwqAgVFggcG93ZXIgb2Zmc2V0OiB1bmtub3duCiDCoMKgwqDC
oMKgwqDCoMKgwqAgRnJlcXVlbmN5IG9mZnNldDogdW5rbm93bgogwqDCoMKgwqDCoMKgwqDCoMKg
IFN1cHBvcnRzIFZBUHM6IHllc8KgIFBIWSBuYW1lOiBwaHkwCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
