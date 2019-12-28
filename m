Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F81912BD47
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 11:28:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VGw+sOvm62WqCbqAaSF9mefykvms/UB8jK4njaGgvl8=; b=hZP2wRVfYDKdjpE9GqTUrOGkJ
	/wodqt6/+Cdozt1rPqJwfK7bdvFKEe6NJDhau1bcYx5UeY7vdr9SaxovLK2urmMyxWTGpFXcisMwF
	ANz3R5n/Vi+BbP6peg8cFBkdxsQdwNAUK/W87MxBtnnyZeGL3WIY9FQW4yygOxr5Bz+ASOh64X3MN
	rCWaD+Ggp79MBv7VOZN5XTtEqJYgsYNrpGc228Pe7sNcHRgnhvNQgigzkPM8Nh4/3rLXfA5p9SxqD
	TgAqaeWgM8uCjlttsnSX4EdzWdOdn+mbNKIlusWhVjBROsgKlPkVjot0Yf5b2spMl6MiDMoQh/Ooc
	WcqLxHxcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il9KK-00031p-In; Sat, 28 Dec 2019 10:28:08 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il9KE-00031M-WC
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 10:28:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id l2so28981306lja.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 02:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RuA5aN+KHbs/BRnzlHe1R/uJeB36vcKdn2TVuR4Cwqk=;
 b=f/G2JH7tXCgrwJ/L+/8n/GqBSY1bBGXfoXsUn0x1zJ52gSdI8JxCwhUyRiC1LnyMqq
 zzMjseptt16bmxUrBnDReaO8xRs7HwETONdt8jFC94dUhpHxvlZSdlPlkTsd7qaE3ZeL
 SrgzMuPgKVzmCre8coYMsszvGv5m5eed1bXNxuVg6NFgmAEwZgzJr5Tv7VZDeMuislfw
 XdFjaTuWJ6bIIXPWMom7biBojuu5JKXUI48GjyIzKxmF6W8dLhwNrL1Cu9hUCQ2E27rR
 SqrNoJaQVJ2SUVXlgy+R8naSzLV/mwgGft5NRJcUQdm0ONwV5Vh++7wAr0R6ZBHkBt4T
 IjWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RuA5aN+KHbs/BRnzlHe1R/uJeB36vcKdn2TVuR4Cwqk=;
 b=JpT16Lgf4m2Vs0ajLooObCbXFectUG+F0+fMuWxCEpiYCalYyIBVcJOb3HpNTVO+iC
 4lfbOJ+Vmd9BNrX+uUymiidezDoxEiP0rF2RdfOnlORs0M8rtWKzy1guNDse+1k7YA/k
 69lnWWJoMuSBks899EeY8F0PHrvJyWrk+4WAaOfgRFCeCjFgvBSvPJpDiv/3hX9T5uRg
 7yd5PM6aUEpMEemAGR324IeXPLPzmNxMT3y5xqUKDNkoxoMcDbptyaTF8kMDEJfYz6uj
 Hem9+HQILmuMvtvZBT1c6QGOUq/mHD13x5d5zw6VkPuoTlI0AaVJK17//x7VofhDkNj1
 cXCA==
X-Gm-Message-State: APjAAAU0i0ngp6GFxVBBQZZ9F/JY1/WzolCY1IQptQHWD8v375vZS5af
 D/UOy8EWsGJGIiwHmr+r3YU=
X-Google-Smtp-Source: APXvYqweumhBfG7g0y3odJz9HLz9uduwGf7yR2ojFuZ4lSOipyJ9fzLvaS/14OS2OfwyThWhnupsyA==
X-Received: by 2002:a2e:9708:: with SMTP id r8mr30834501lji.92.1577528878629; 
 Sat, 28 Dec 2019 02:27:58 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id g27sm15973485lfj.49.2019.12.28.02.27.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Dec 2019 02:27:57 -0800 (PST)
To: Yousong Zhou <yszhou4tech@gmail.com>
References: <20191227085335.10144-1-zajec5@gmail.com>
 <CAECwjAjw7dkkgqSd47N55XC1JwLNWUMTQQHSJdJ5y4fEhnoYDw@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <f4eacae6-bfea-c9b5-4b00-f0a349639e93@gmail.com>
Date: Sat, 28 Dec 2019 11:27:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <CAECwjAjw7dkkgqSd47N55XC1JwLNWUMTQQHSJdJ5y4fEhnoYDw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_022803_064071_850456D8 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH fstools] Revert "block: mount_action:
 handle mount/umount deps"
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjcuMTIuMjAxOSAxMzoyNSwgWW91c29uZyBaaG91IHdyb3RlOgo+IE9uIEZyaSwgMjcgRGVj
IDIwMTkgYXQgMTY6NTMsIFJhZmHFgiBNacWCZWNraSA8emFqZWM1QGdtYWlsLmNvbT4gd3JvdGU6
Cj4+Cj4+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPj4KPj4gVGhp
cyByZXZlcnRzIGNvbW1pdCAzMmMzMTI2YjJmMDQ2NDEwNmQ3NDMxNzMzNmI2YWVmMWQ3ZDVmODJm
Lgo+Pgo+PiBJbnRlcm5hbCBsaXN0IG9mIGRldmljZXMgZ3VhcmFudGVlcyBzb21lIGJhc2ljIHNv
cnRpbmcgKGJ5IGRldmljZSB0eXBlCj4+IGFuZCB0aGVuIGEgbmFtZSkgYnV0IG5vdGhpbmcgbW9y
ZS4gSW4gcGFydGljdWxhciBpdCdzIG5vdCBndWFyYW50ZWVkCj4+IChhbmQgaXQncyBhY3R1YWxs
eSBxdWl0ZSB1bmNvbW1vbikgdGhhdCBhbGwgcHJlY2VkaW5nIGVudHJpZXMgYXJlIHBhcmVudAo+
PiBkZXZpY2VzLgo+Pgo+PiBNb3VudGluZyBhbGwgcHJlY2VkaW5nIGRldmljZXMgbWF5IGVhc2ls
eSByZXN1bHQgaW4gdW5yZWxhdGVkIG1vdW50cy4KPj4gVGhleSBjYW4gZmFpbCBlYXNpbHkgYmFz
aWNhbGx5IGJyZWFraW5nIG9yaWdpbmFsIG1vdW50aW5nIGF0dGVtcHQsIGUuZy46Cj4+Cj4+IGRh
ZW1vbi5lcnIgYmxvY2tkOiBrZXJuZWwgaXMgcmVxdWVzdGluZyBhIG1vdW50IC0+IHNkYTIKPj4g
ZGFlbW9uLmVyciBibG9jazogL2Rldi9zZGExIGlzIGFscmVhZHkgbW91bnRlZCBvbiAvdG1wL3J1
bi9ibG9ja2Qvc2RhMQo+PiBkYWVtb24uZXJyIGJsb2NrOiBhdXRvZnM6ICJhZGQiIGFjdGlvbiBo
YXMgZmFpbGVkOiAtMQo+PiBkYWVtb24uZXJyIGJsb2NrZDogZmFpbGVkIHRvIHJ1biBibG9jay4g
YWRkL3NkYTIKPiAKPiBTb3JyeSBmb3IgdGhlIGluY29udmVuaWVuY2UuICBCdXQgdGhlIGVycm9y
IChyZWdyZXNzaW9uKSBzaG91bGQgYmUKPiBjYXVzZWQgYnkgMmYyYTA5YWQgKCJibG9jazogbW91
bnRfZGV2aWNlOiBlcnIgbG9nIG9ubHkgd2hlbiBtcAo+IGRldmlhdGVzIGZyb20gc3BlYyIpLiAg
bS0+dGFyZ2V0IGlzIGV4cGVjdGVkIHRvIG1hdGNoIHRoZSBhY3R1YWwgbW91bnQKPiBwb2ludCBv
bmx5IHdoZW4gaXQgaXMgbm90IG1hbmFnZWQgYnkgYmxvY2tkIChtLT5hdXRvZnMpLgo+IAo+IFBs
ZWFzZSBzZWUgaWYgdGhlIGZvbGxvd2luZyBwYXRjaCB3b3Jrcy4gIFdlIGNhbiBhbHNvIGNoZWNr
IGlmIG0gaXMKPiBtYW5hZ2VkIGJ5IGF1dG9mcyBhbmQgbS0+dGFyZ2V0IGEgc3ltbGluayB3aG9z
ZSB0YXJnZXQgbWF0Y2hlcyBtcCwgYnV0Cj4gdGhhdCdzIGEgYml0IG92ZXJraWxsLgo+IAo+IC0t
LSBhL2Jsb2NrLmMKPiArKysgYi9ibG9jay5jCj4gQEAgLTExMDAsNyArMTEwMCw3IEBAIHN0YXRp
YyBpbnQgbW91bnRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IHR5cGUpCj4gCj4gICAg
ICAgICAgbXAgPSBmaW5kX21vdW50X3BvaW50KHByLT5kZXYpOwo+ICAgICAgICAgIGlmIChtcCkg
ewo+IC0gICAgICAgICAgICAgICBpZiAobSAmJiBtLT50eXBlID09IFRZUEVfTU9VTlQgJiYgc3Ry
Y21wKG0tPnRhcmdldCwgbXApKSB7Cj4gKyAgICAgICAgICAgICAgIGlmIChtICYmICFtLT5hdXRv
ZnMgJiYgbS0+dHlwZSA9PSBUWVBFX01PVU5UICYmIHN0cmNtcChtLT50YXJnZXQsIG1wKSkgewo+
ICAgICAgICAgICAgICAgICAgICAgICAgICBVTE9HX0VSUigiJXMgaXMgYWxyZWFkeSBtb3VudGVk
IG9uICVzXG4iLCBwci0+ZGV2LCBtcCk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9
IC0xOwo+ICAgICAgICAgICAgICAgICAgfSBlbHNlCj4gCgpZb3UncmUgcmlnaHQgYWJvdXQgdGhh
dCBlcnJvciBhbmQgeW91ciBkaWZmIGluZGVlZCBmaXhlcyB0aGF0OgovZGV2L3NkYTEgaXMgYWxy
ZWFkeSBtb3VudGVkIG9uIC90bXAvcnVuL2Jsb2NrZC9zZGExCmZvciBtZS4gSXQgc3RpbGwgZG9l
c24ndCBmaXggbW91bnRpbmcgdW5uZWVkZWQgZGV2aWNlcyB0aG91Z2guCgoKUGxlYXNlIGNoZWNr
IHRoaXM6CgojIG1vdW50IHwgZ3JlcCAiL2Rldi9zZCIKCiMgbHMgL3Zhci9ydW4vYmxvY2tkL3Nk
YjIKYi50eHQKCiMgbW91bnQgfCBncmVwICIvZGV2L3NkIgovZGV2L3NkYTEgb24gL3RtcC9ydW4v
YmxvY2tkL3NkYTEgdHlwZSB2ZmF0IChydyxyZWxhdGltZSxmbWFzaz0wMDAwLGRtYXNrPTAwMDAs
YWxsb3dfdXRpbWU9MDAyMixjb2RlcGFnZT00MzcsaW9jaGFyc2V0PWlzbzg4NTktMSxzaG9ydG5h
bWU9bWl4ZWQsZXJyb3JzPXJlbW91bnQtcm8pCi9kZXYvc2RhMiBvbiAvdG1wL3J1bi9ibG9ja2Qv
c2RhMiB0eXBlIHZmYXQgKHJ3LHJlbGF0aW1lLGZtYXNrPTAwMDAsZG1hc2s9MDAwMCxhbGxvd191
dGltZT0wMDIyLGNvZGVwYWdlPTQzNyxpb2NoYXJzZXQ9aXNvODg1OS0xLHNob3J0bmFtZT1taXhl
ZCxlcnJvcnM9cmVtb3VudC1ybykKL2Rldi9zZGIxIG9uIC90bXAvcnVuL2Jsb2NrZC9zZGIxIHR5
cGUgZnVzZWJsayAocncscmVsYXRpbWUsdXNlcl9pZD0wLGdyb3VwX2lkPTAsYWxsb3dfb3RoZXIs
Ymxrc2l6ZT00MDk2KQovZGV2L3NkYjIgb24gL3RtcC9ydW4vYmxvY2tkL3NkYjIgdHlwZSBmdXNl
YmxrIChydyxyZWxhdGltZSx1c2VyX2lkPTAsZ3JvdXBfaWQ9MCxhbGxvd19vdGhlcixibGtzaXpl
PTQwOTYpCgpBcyB5b3UgY2FuIHNlZSwgYWNjZXNzaW5nICJzZGIyIiBwYXJ0aXRpb24gcmVzdWx0
ZWQgaW4gbW91bnRpbmcgMyBvdGhlcgpwYXJ0aXRpb25zIHRoYXQgSSBkb24ndCBuZWVkIGF0IGFs
bC4gSW5jbHVkaW5nIHNwaW5uaW5nIDEgdW51c2VkIGRpc2shCgoKPj4gSWYgc29tZSBkZXBlbmRl
bmN5IGhhbmRsaW5nIGlzIHJlcXVpcmVkIGl0IHNob3VsZCBiZSBpbXBsZW1lbnRlZAo+PiBleHBs
aWNpdGx5IGFzIGN1cnJlbnQgc29sdXRpb24gaXNuJ3QgcmVsaWFibGUgYW5kIGl0IGJyZWFrcyBh
dXRvZnMgd2hlbgo+PiB1c2luZyBtdWx0aXBsZSBkZXZpY2VzIChwYXJ0aXRpb25zKS4KPj4KPiAK
PiBEZXBlbmRlbmNpZXMgYXJlIGRpcmVjdGx5IGltcGxpZWQgYnkgbW91bnQgdGFyZ2V0IGFzIHNw
ZWNpZmllZCBpbiB0aGUKPiB1Y2kgY29uZmlnIGZpbGUuICBUaGlzIHJlbGF0aW9uc2hpcCBpcyBp
bmhlcmVudGx5IHRoZXJlLiAgRS5nLgo+IAo+ICAgMS4gbW91bnQgdGFyZ2V0IC9tbnQvYQo+ICAg
Mi4gbW91bnQgdGFyZ2V0IC9tbnQvYS9iCj4gCj4gVGhlbiAiMSIgbXVzdCBtb3VudCBiZWZvcmUg
IjIiLiAgIjIiIGJlZm9yZSAiMSIgaXMgbm90IHByYWN0aWNhbGx5Cj4gdXNlZnVsIGluIGFueSB3
YXkuCgpUaGF0IHJlbGF0aW9uc2hpcC9kZXBlbmRlbmN5IGlzbid0IGRpcmVjdGx5IHBhcnNlZCBi
eSBmc3Rvb2xzIGluIGFueQp3YXkuIEJ5IG1ha2luZyBpdCBleHBsaWNpdCBJIHRob3VnaHQgb2Yg
c29tZXRoaW5nIGxpa2U6Cgpjb25maWcgJ21vdW50JyAnL2Rldi92ZGMnCglvcHRpb24JdGFyZ2V0
CScvbW50JwoJb3B0aW9uCXV1aWQJJ0FBQUEnCglvcHRpb24JZW5hYmxlZAknMScKCW9wdGlvbglh
dXRvZnMJJzEnCgpjb25maWcgJ21vdW50JyAnL2Rldi92ZGInCglvcHRpb24JcGFyZW50CScvZGV2
L3ZkYy8KCW9wdGlvbgl0YXJnZXQJJy9tbnQvcycKCW9wdGlvbgl1dWlkCSdCQkJCJwoJb3B0aW9u
CWVuYWJsZWQJJzEnCglvcHRpb24JYXV0b2ZzCScxJwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
