Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7204D58457
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Jun 2019 16:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZhN89fAgXd/WbUFEPZZyv/88fd3LoAn4qogsy4GV43E=; b=Ip+LMrLVtEUL9B9f/Y0XOj24t
	A2Z8MMKiIPY3Y2uP327NXezSr6nvWA5j9m8tnuAyrow/L5/6JMIUZSH8h9i/sJNW2D7rpipaEvs1S
	uzXAP/2sjdJqgikdGKujzM9cfUSbqlePgcu9KR1STIWJoV8m078GdYzds8YeVz4Ygh4dduwMOQTMu
	hCUwvREjMAI2EmBS/SWWUOZh/muYYtUYrFShIDpjHogOlNlVcvAZOsd2/tEK4vydAVC6pjN2t3Zjq
	p9negykhYm58+J1X1JC9q3BuOlJnLgyYwLOOYQKoqssDV1E9k+2sPfjJs5p3orxo2Bt9YYmJ2uYSi
	g5d7Ursww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVE3-0006S2-Ld; Thu, 27 Jun 2019 14:18:12 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVDl-0006Rd-9Q
 for openwrt-devel@lists.openwrt.org; Thu, 27 Jun 2019 14:17:55 +0000
Received: by mail-ed1-x544.google.com with SMTP id a14so7212288edv.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 27 Jun 2019 07:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=UECFd4bgyiX6JiL/+7MV5X8Seqq64TppDNlP9UvF/eM=;
 b=OwPZo/xJBz4WgFGsXLyxsTdmh4XkolKpuMgsl2orDghAfQrQHfrMfbwN7Z8s2rQHJE
 xUZLG8jb5Jx/dBi98tm99mdRg0Rm5lomeelMhQAgxEUZ56cI5a1camq/tIwnZTCNTi+3
 nhzXZsvlm0xBeWgjVFbhHD00mOMLSv/DyDsnC+1aZBIrEP/gjnhcnv0H6z1TQuGEIjAP
 KjkiKGUd6TOPWT1HPGwN9afUxCLBH1U/fR8oeQTjK0lLNvdPLebKXpDQaINjhnuFFaKe
 FQfO+SFNxKi69Y5WTJGO9I2ON12+YLBP4sYbEv47cj/m0EQZ99gBasR01QHflU3fvt3/
 Zo6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=UECFd4bgyiX6JiL/+7MV5X8Seqq64TppDNlP9UvF/eM=;
 b=bol4ZBNlaoxmTFRgRAmAJQ3bGTHxyBgq5vmkmAxV54br6nJ4JW7UbTJoi73MlM7X2q
 UhhWPgfh4ABi4s2PYUijHyDfwhMYJOHvCo9EqhV/nHpfg1mXUTmR1EZ4ZSPIxrZL6mdS
 RZtINT1GEfz33o9Sl8g/qzk6055frgjpGStuKzHpx95i4bdXC6y6xjkq4c1D94s2e1MJ
 Mc9T5HzYm9K/jbasbNxq5BmOvsHGPUrp7/tXO3pIMqzaMdZoDoEuOCMKZD9F2KYsM2EH
 aaCyzhCJ/7nYq/wlMt8zgvnsxqWwSTZIIjau+L5V1Y5e+3ocfCR3sKcd+wwmydr9e+Kc
 xVSA==
X-Gm-Message-State: APjAAAXsPClu0PNpa/WdPpDQK8Ar3s1725T1ho8D+PFa6n6Tg1IwTVhI
 mTkctu/cjgiKDBB2U9wUtdmBPXXT31KBhQ==
X-Google-Smtp-Source: APXvYqw0MweRFw27TGEP6Z7pDiORL6mgWyqm6U47mkORgq1S23DWcDdZ5AXIZFDy0yGNBrQHRVmUZQ==
X-Received: by 2002:aa7:c98c:: with SMTP id c12mr4407811edt.225.1561645070892; 
 Thu, 27 Jun 2019 07:17:50 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id b1sm455107ejo.9.2019.06.27.07.17.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 07:17:50 -0700 (PDT)
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
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <efe239e4-a6dc-1328-d66e-29047290fca1@ncentric.com>
Date: Thu, 27 Jun 2019 16:17:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <4ca7aa93-1960-1373-7590-1d39c41d8768@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_071753_383608_BF20B124 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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

Ck9uIDI2LjA2LjE5IDE4OjM5LCBCZW4gR3JlZWFyIHdyb3RlOgo+IE9uIDYvMjYvMTkgOToyOCBB
TSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pgo+PiBPbiAyNi4wNi4xOSAxODoxNiwgQmVuIEdy
ZWVhciB3cm90ZToKPj4+IE9uIDYvMjYvMTkgMjowMiBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3Rl
Ogo+Pj4+Cj4+Pj4gT24gMjUuMDYuMTkgMTU6NTQsIEJlbiBHcmVlYXIgd3JvdGU6Cj4+Pj4+Cj4+
Pj4+Cj4+Pj4+IE9uIDA2LzI1LzIwMTkgMDI6NTMgQU0sIEtvZW4gVmFuZGVwdXR0ZSB3cm90ZToK
Pj4+Pj4+Cj4+Pj4+PiBPbiAyNC4wNi4xOSAyMjowNCwgQmVuIEdyZWVhciB3cm90ZToKPj4+Pj4+
PiBPbiA2LzI0LzE5IDg6MzIgQU0sIEtvZW4gVmFuZGVwdXR0ZSB3cm90ZToKPj4+Pj4+Pj4gSGkg
QmVuLAo+Pj4+Pj4+PiBIaSBBbGwsCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFNvIEknbSBnb2luZyB0byBn
aXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+Pj4+Pj4gQXMgdGhlIElCU1MgZnVuY3Rpb25hbGl0
eSBpcyBoZWF2aWx5IGFkdmVydGlzZWQgYXMgYSBkZWx0YSB0byAKPj4+Pj4+Pj4gbWFpbmxpbmUs
IGl0IHdvdWxkIGJlIHZlcnkgbmljZSB0byBnZXQgaXQgd29ya2luZyBhbHNvIDopCj4+Pj4+Pj4+
Cj4+Pj4+Pj4+IFRlc3RpbmcgdGhlIGxhdGVzdCBhdGgxMGstY3QgZHJpdmVyIGFuZCBmaXJtd2Fy
ZSBzZWVtcyB0byBiZSBhIAo+Pj4+Pj4+PiBzdGVwIGJhY2sgY29tcGFyZWQgdG8gcm91Z2hseSBh
IG1vbnRoIGFnby4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSdtIGN1cnJlbnRseSBzZWVpbmcgdGhlIGZp
cm13YXJlIGNyYXNoaW5nLCB3aGljaCB3YXMgbm90IHRoZSAKPj4+Pj4+Pj4gY2FzZSBiZWZvcmU6
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGF0aDEway1jdCArIGh0dC1mdzoKPj4+Pj4+Pj4K
Pj4+Pj4+Pj4gaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3LzdTeTl5eDZzCj4+Pj4+Pj4KPj4+Pj4+
PiBMb29rcyBsaWtlIGZpcm13YXJlIHJhbiBvdXQgb2Ygc29tZSBXTUkgZXZlbnQgYnVmZmVycyBh
bmQgCj4+Pj4+Pj4gY3Jhc2hlZCBpbnN0ZWFkIG9mIGhhbmRsaW5nCj4+Pj4+Pj4gaXQgbW9yZSBn
cmFjZWZ1bGx5Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gUGxlYXNlIHRyeSB0aGUgYXR0YWNoZWQgKHVudGVz
dGVkKSBmaXJtd2FyZSBhbmQgc2VlIGlmIGl0IAo+Pj4+Pj4+IGJlaGF2ZXMgYmV0dGVyLgo+Pj4+
Pj4+Cj4+Pj4+PiBIaSBCZW4sCj4+Pj4+Pgo+Pj4+Pj4gMSBzdGVwIGZvcndhcmQgaGVyZS4KPj4+
Pj4+Cj4+Pj4+PiBJJ20gbm90IHNlZWluZyBjcmFzaGVzIGFueW1vcmUgdXNpbmcgdGhlIHRlc3Qt
ZmlybXdhcmUuCj4+Pj4+Pgo+Pj4+Pj4gaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3LzRaZVh1N2l3
Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEkndmUgbGlua2VkIHVwIDIgSUJTUyBkZXZpY2VzICh3YXZl
IDEsIFZIVDgwKQo+Pj4+Pj4KPj4+Pj4+IE9MU1IgdHJhZmZpYyAoVURQKSB3b3JrcyBhbmQgcGFj
a2V0cyBoZXJlIGFyZSBuaWNlbHkgZ29pbmcgYmFjayAmIAo+Pj4+Pj4gZm9ydGguCj4+Pj4+Pgo+
Pj4+Pj4gU2ltcGx5IHBpbmdpbmcgKElDTVApIGJldHdlZW4gdGhlIDIgZGV2aWNlcyBkb2VzIG5v
dCB3b3JrLgo+Pj4+Pj4KPj4+Pj4+IFdoZW4gc2VuZGluZyAxMDAgcGluZ3MsICg2NCBieXRlIGxh
cmdlKcKgIHNvbWV0aW1lcyAxIGdldHMgdGhyb3VnaCAKPj4+Pj4+IC4uIGJ1dCB3aXRoIGEgbGF0
ZW5jeSBvZiA+IDUwMG1zCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEkgdGhpbmsgaWYgdGhlIHNwbGF0
IGFuZCB0aGUgYmVhY29uIHNwYW0gYmVsb3cgY291bGQgYmUgZml4ZWQgLi4gCj4+Pj4+PiB0aGlz
IHdvdWxkIGJlIGEgbWFqb3Igc3RlcCBmb3J3YXJkOgo+Pj4+Pj4KPj4+Pj4+IFvCoMKgIDMwLjMy
ODQyM10gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+Pj4+PiBbwqDCoCAz
MC4zMzMyNTFdIFdBUk5JTkc6IENQVTogMCBQSUQ6IDE1NzggYXQgCj4+Pj4+PiAvbW50L3JhbWRp
c2sva29lbi9maXJtd2FyZS9idWlsZHMvZ2VuZXJpY19yYjkyMi9idWlsZF9kaXIvdGFyZ2V0LW1p
cHNfMjRrY19tdXNsL2xpbnV4LWFyNzF4eF9taWtyb3Rpay9hdGgxMGstY3QtMjAxOS0wNS0wOC1m
OThiNmRjNC9hdGgxMGstNC4xOS9tYWMuYzo2NTYzIAo+Pj4+Pj4gYXRoMTBrX21hY192aWZfYmVh
Y29uX2ZyZWUrMHhjN2MvMHgxMTVjIFthdGgxMGtfY29yZV0KPj4+Pj4+IFvCoMKgIDMwLjM1NTYz
Nl0gTW9kdWxlcyBsaW5rZWQgaW46IG1idCBhdGg5ayBhdGg5a19jb21tb24gcWNzZXJpYWwgCj4+
Pj4+PiBwcHBvZSBwcHBfYXN5bmMgb3B0aW9uIGNkY19tYmltIGF0aDlrX2h3IGF0aDEwa19wY2kg
YXRoMTBrX2NvcmUgCj4+Pj4+PiBhdGggdXNiX3d3YW4gc2llcnJhX25ldCBzaWVycmEgcm5kaXNf
aG9zdCBxbWlfd3dhbiBwcHBveCAKPj4+Pj4+IHBwcF9nZW5lcmljIG1hYzgwMjExIGlwdGFibGVf
bmF0IGlwdGFibGVfbWFuZ2xlIGlwdGFibGVfZmlsdGVyIAo+Pj4+Pj4gaXB0X1JFSkVDVCBpcHRf
TUFTUVVFUkFERSBpcF90YWJsZXMgaHVhd2VpX2NkY19uY20gZnRkaV9zaW8gCj4+Pj4+PiBjZmc4
MDIxMSBjZGNfc3Vic2V0IGNkY19uY20gY2RjX2V0aGVyIHh0X3RpbWUgeHRfdGNwdWRwIHh0X3N0
YXRlIAo+Pj4+Pj4geHRfbmF0IHh0X211bHRpcG9ydCB4dF9tYXJrIHh0X21hYyB4dF9saW10Cj4+
Pj4+PiBbwqDCoCAzMC40MjczMzFdwqAgbmxzX3V0ZjggbmxzX2lzbzg4NTlfMSBubHNfY3A0Mzcg
YXV0aGVuYyAKPj4+Pj4+IGVoY2lfcGxhdGZvcm0gc2RfbW9kIHNjc2lfbW9kIGVoY2lfaGNkIGdw
aW9fYnV0dG9uX2hvdHBsdWcgZXh0NCAKPj4+Pj4+IG1iY2FjaGUgamJkMiB1c2Jjb3JlIG5sc19i
YXNlIHVzYl9jb21tb24gcHRwIHBwc19jb3JlIG1paSBhZWFkIAo+Pj4+Pj4gY3J5cHRvX251bGwg
Y3J5cHRvbWdyIGNyYzMyY19nZW5lcmljIGNyeXB0b19oYXNoCj4+Pj4+PiBbwqDCoCAzMC40NDgw
MTddIENQVTogMCBQSUQ6IDE1NzggQ29tbTogd3BhX3N1cHBsaWNhbnQgTm90IHRhaW50ZWQgCj4+
Pj4+PiA0LjE0LjEyOSAjMAo+Pj4+Pgo+Pj4+PiBQbGVhc2UgbG9vayBpbiB5b3VyIGNvZGUgYW5k
IGxldCBtZSBrbm93IHRoZSBzb3VyY2UgYXJvdW5kIHRoZSAKPj4+Pj4gbGluZSBpbiBtYWMuYyAo
NjU2MykgdGhhdCBpcyBzcGxhdHRpbmcuCj4+Pj4+Cj4+Pj4+IEFsc28sIHlvdSBtaWdodCBncmFi
IHRoZSBsYXRlc3QgYXRoMTBrLWN0IHJlcG8sIGl0IGhhcyBhIHR3ZWFrIAo+Pj4+PiB0aGF0IG1p
Z2h0IGZpeCB0aGUgU1dCQSBvdmVycnVuCj4+Pj4+IG1lc3NhZ2VzLgo+Pj4+Pgo+Pj4+PiBodHRw
czovL2dpdGh1Yi5jb20vZ3JlZWFyYi9hdGgxMGstY3QKPj4+Pj4KPj4+Pj4gVGhhbmtzLAo+Pj4+
PiBCZW4KPj4+Pj4KPj4+PiBIaSBCZW4sCj4+Pj4KPj4+PiBIZXJlIGlzIHRoZSBvdXRwdXQgYmFz
ZWQgb24gdGhlIGxhdGVzdCBnaXQgSEVBRCBvZiB5b3VyIGN0IHRyZWUsIAo+Pj4+IGNvbWJpbmVk
IHdpdGggdGhlIHRlc3QgZmlybXdhcmU6Cj4+Pj4KPj4+PiBodHRwczovL3Bhc3RlYmluLmNvbS9y
YXcva3dDNmMxOEoKPj4+Cj4+PiBIZWxsbywKPj4+Cj4+PiBUaGUgc3BsYXQgZGVjb2RlIGRvZXMg
bm90IG1hdGNoIHRoZSBzb3VyY2UgY29kZSwgc28gSSdtIG5vdCB3aGljaCBpcyAKPj4+IGNvcnJl
Y3QuCj4+Pgo+PiBPcGVuV3J0IHNlZW1zIHRvIGFkZCBjdXN0b20gcGF0Y2hlcyB0byB5b3VyIHNv
dXJjZS4KPj4KPj4gUGxlYXNlIGZpbmQgdGhlIGNvbXBsZXRlIHNvdXJjZSBpbiBzdWJzZXF1ZW50
IG1haWwgYXMgYmVpbmcgYnVpbGQuCj4KPiBJIGRpZCBsb29rIGluIHRoYXQgY29kZSwgYW5kIHRo
YXQgaXMgd2hlcmUgSSBzYXcgdGhlIG1pc21hdGNoLiBQbGVhc2UgCj4gY2hlY2sgeW91ciBvd24g
bG9jYWwgc3lzdGVtCj4gYW5kIHNlZSBpZiB0aGUgc3BsYXQgbWF0Y2hlcyB5b3VyIGNvZGU/wqAg
TWF5YmUgSSBtYWRlIHNvbWUgbWlzdGFrZSBvZiAKPiBjb3Vyc2UuLi4KPgo+IFlvdSBjYW4gcGFz
dGUgfjIwIGxpbmVzIG9mIGNvZGUgYXJvdW5kIHRoZSBwcm9wZXIgc3BsYXQgbGluZSBhbmQgdGhl
biAKPiBJIGNhbiBmaW5kIGl0IGluIG15Cj4gc291cmNlLi4uCj4KPiBUaGFua3MsCj4gQmVuCj4K
PgpIaSBCZW4sCgpKdXN0IHJldHJpZWQgYWdhaW4gb24gYSBzbGlnaHRseSBvbGRlciBjb21taXQg
KDIwMTktMDUtMDgpIGFuZCB0aGUgc3BsYXQgCnBvaW50cyB0byBhbm90aGVyIGxvY2F0aW9uIG5v
dy4KV2hlbiBsb29raW5nIGl0IHVwLCBpdCBhZ2FpbiBwb2ludHMgdG8gdGhlIFdBUk5fT04gcG9p
bnRlZCBiZWxvdyAuLgoKQ2hlY2tpbmcgc2hvd3MgdGhhdCBhbGwgY2FsbHMgdG8gYXRoMTBrX21h
Y192aWZfYmVhY29uX2ZyZWUoKSBjYWxscyBhcmUgCndheSBhYm92ZSB0aGlzIGxpbmUgKGhpZ2hl
c3QgbGluZSBuciBpcyBhcm91bmQgbGluZTE5NzApCkkgY3VycmVudGx5IGNhbid0IGV4cGxhaW4g
d2hlcmUgdGhlIG1pc21hdGNoIGNvbWVzIGZyb20gLi4KCkN1cnJlbnQgYnVpbGQgYmVsb3cgaXMg
anVzdCB0aGUgZ2l0IEhFQUQgb2Ygb3BlbndydCAxOS4wNyBicmFuY2gswqAgCmNsb25lZCwgYnVp
bGQgYW5kIGZsYXNoZWQgd2l0aG91dCBhbnkgbW9kaWZpY2F0aW9uLgoKClvCoMKgIDMxLjk1Njc3
NF0gV0FSTklORzogQ1BVOiAwIFBJRDogMTcyNSBhdCAKL21udC9yYW1kaXNrL2tvZW4vZmlybXdh
cmUvYnVpbGRzL2dlbmVyaWNfcmI5MjIvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0a2NfbXVzbC9s
aW51eC1hcjcxeHhfbWlrcm90aWsvYXRoMTBrLWN0LTIwMTktMDUtMDgtZjk4YjZkYzQvYXRoMTBr
LTQuMTkvbWFjLmM6NjU2MyAKYXRoMTBrX21hY192aWZfYmVhY29uX2ZyZWUrMHhjN2MvMHgxMTVj
IFthdGgxMGtfY29yZV0KCgoKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBh
dGgxMGtfY29uZmlnX3BzKGFyKTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
cmV0KQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhdGgx
MGtfd2FybihhciwgImZhaWxlZCB0byBzZXR1cCBwcyBvbiB2ZGV2ICVpOiAKJWRcbiIsCiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGFydmlmLT52ZGV2X2lkLCByZXQpOwogwqDCoMKgwqDCoMKgwqAgfQoKIMKgwqDC
oMKgwqDCoMKgIGlmIChjaGFuZ2VkICYgQlNTX0NIQU5HRURfTUNBU1RfUkFURSAmJgotLS0+wqAg
wqDCoMKgwqDCoMKgwqAgIVdBUk5fT04oYXRoMTBrX21hY192aWZfY2hhbihhcnZpZi0+dmlmLCAm
ZGVmKSkpIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiYW5kID0gZGVmLmNoYW4t
PmJhbmQ7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWNhc3RfcmF0ZSA9IHZpZi0+
YnNzX2NvbmYubWNhc3RfcmF0ZVtiYW5kXTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpZiAobWNhc3RfcmF0ZSA+IDApCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJhdGVpZHggPSBtY2FzdF9yYXRlIC0gMTsKIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBlbHNlCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJhdGVpZHggPSBmZnModmlmLT5ic3NfY29uZi5iYXNpY19yYXRlcykgLSAxOwoK
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoYXItPnBoeV9jYXBhYmlsaXR5ICYg
V0hBTF9XTEFOXzExQV9DQVBBQklMSVRZKQoKUmVnYXJkcywKCktvZW4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
