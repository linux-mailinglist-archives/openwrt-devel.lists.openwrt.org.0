Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE76158D08
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 11:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tG5HrPxxR6CFK3eARrwOSIxpNDmurlcPAyK0NyglRJk=; b=Y4BRFelzZaLUSV
	YGG6Nudgbvschs2rN8Tm2oXoFAxLAtiCUuNDNWVnEvxwx5owpgquZxrGkquYbXSl1xUGEg7b2Fj0L
	uB75OrDWiaxrXqJyrDDFqdeYoWV6Y4YJ30GkDmDBf2gRSbCnBe9qgNyQSvW6Nn7nrCjVcAVXB8dmK
	ruroPi2wC99RbCW0qapkdP0JP0NK+/4PjVTjYbaUWwdXv70aSgUgFVXHbWtOUjTmRgELfkXn5Yr1s
	mOQvWc2PxK9LHLi+pndhHs5Y7RYdr1HcN500AWPMSm2X9Vcx4TvibSyaSdDl9tzUejrh88KSdaPKH
	+e663xFKLbLJNJbXEruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TDS-0000XJ-DY; Tue, 11 Feb 2020 10:56:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TDL-0000Wr-OA
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 10:56:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id n7so5337793pfn.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Feb 2020 02:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=UxEaTPlpAseUFgU0IhNjFfF9B/Mq3LkzL24avJzpZ/o=;
 b=rvozqHk39+1k8Y/5ZtdiFmlzUA+yO2Cvg8WGbc0Qn/WQFo8KfdlxLQFWFyA+aI7Zsx
 Wqmok9FY1tJ5j1xNpLeG0Hn1UZiPaguBe5e/zdUhQd7jn4fbTlekkTGU96T0UnKoEM8e
 wDAIrAD24PAR4jvyKm2dCs/p8AnreOlvuirf79dQnEQO79lUmEzthtHTBtPswkrzHAEs
 cMtoO0+uXO1ghxD0YyBD37MMOiPK2y9lBETZKwJEPTlt7Zo7ecvJnA+DSobXQ0cQlh7y
 5sV7kR5uT6znOLq/JOox0aRzbzDmeQ5gqerUHVArmB9TGoE02pblImAbDdVA/Xdw/FFW
 182A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=UxEaTPlpAseUFgU0IhNjFfF9B/Mq3LkzL24avJzpZ/o=;
 b=LXVAmpCqoc5CousJs1pJa1Gkd26HqylDx4pTGgKwoc4Ajp6N/Vw9TSO+RjpTGDMRi/
 97e+sSeIz6/wiMuAu4rWVOElVRsOWwAeSZEyNLSxGSWkS7uXskPRBFAdOzJQpn+a+OWC
 GTeBhnXdIV3bonUGxaR9q1e/AEaKp0ux4cheE1fydGIKYJ/dKR+7GL0+yyMjW78bFUiN
 ZqS/dkeZOCHAt8mAL5nqZ97uVedlNXNTDJ2b6+VhX7ixLMdKyhiLS2rSnW8cEe1zYnMp
 tXyarY/IHji0OTDa8wbjtTs/U1bjOhW4eOcrn2GP6uf8Q8Df3uBC3XnxNChvBKzWwNIl
 U/Ig==
X-Gm-Message-State: APjAAAXGDzIgWfqUJIAP7YwqPQVaURnWXAWwyIwsHLcuKdIQUdAVFTMl
 p9XwrOKP3QvAUNBuqx1cA2A=
X-Google-Smtp-Source: APXvYqyISIR0DbqU+cWpHndjvKXMtBQIWJGUJ+pE64wW/92fV47K8hM3wl1cZ+onPw/0IZosDpyfog==
X-Received: by 2002:a62:4d87:: with SMTP id a129mr2672258pfb.116.1581418582769; 
 Tue, 11 Feb 2020 02:56:22 -0800 (PST)
Received: from [192.168.0.147] ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j125sm3616923pfg.160.2020.02.11.02.56.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 02:56:22 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 11 Feb 2020 02:56:21 -0800
Message-Id: <4E6D3FFA-E14F-419E-A155-7B59945E16DF@gmail.com>
References: <20200211101741.17350-1-ynezz@true.cz>
In-Reply-To: <20200211101741.17350-1-ynezz@true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_025623_812258_9CD333D4 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: gsw_mt7621: disable PORT 5 MAC
 RX/TX flow control by default
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
Cc: openwrt-devel@lists.openwrt.org,
 Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEZlYiAxMSwgMjAyMCwgYXQgMjoxNyBBTSwgUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gCj4g77u/TG9va2luZyBhdCB0aGUg
Y3VycmVudCB1cHN0cmVhbSBkcml2ZXIgaW1wbGVtZW50YXRpb24sIGl0IHNlZW1zIGxpa2UgdGhl
Cj4gVFgvUlggZmxvdyBjb250cm9sIGlzIGVuYWJsZWQgb25seSBpZiB0aGUgZmxvdyBjb250cm9s
IHBhdXNlIG9wdGlvbiBpcwo+IHJlc29sdmVkIGZyb20gdGhlIGRldmljZS9saW5rIHBhcnRuZXIg
YWR2ZXJ0aXNlbWVudHMgKG9yIG90aGVyd2lzZSBzZXQpLgo+IAo+IE9uIHRoZSBvdGhlciBoYW5k
LCBvdXIgY3VycmVudCBpbi10cmVlIGRyaXZlciBmb3JjZSBlbmFibGVzIFRYL1JYCj4gZmxvdyBj
b250cm9sIGJ5IGRlZmF1bHQsIHRodXMgcG9zc2libHkgbGVhZGluZyB0byBUWCB0aW1lb3V0cyBp
ZiB0aGUKPiBvdGhlciBlbmQgc2VuZHMgcGF1c2UgZnJhbWVzICh3aGljaCBhcmUgbm90IHByb3Bl
cmx5IGhhbmRsZWQ/KToKPiAKPiBXQVJOSU5HOiBDUFU6IDMgUElEOiAwIGF0IG5ldC9zY2hlZC9z
Y2hfZ2VuZXJpYy5jOjMyMCBkZXZfd2F0Y2hkb2crMHgxYWMvMHgzMjQKPiBORVRERVYgV0FUQ0hE
T0c6IGV0aDAgKG10a19zb2NfZXRoKTogdHJhbnNtaXQgcXVldWUgMCB0aW1lZCBvdXQKPiAKPiBE
aXNhYmxpbmcgdGhlIGZsb3cgY29udHJvbCBvbiBQT1JUIDUgTUFDIHNlZW1zIHRvIGZpeCB0aGlz
IGlzc3VlcyBhcyB0aGUKPiBwYXVzZSBmcmFtZXMgYXJlIHRoZW4gZmlsdGVyZWQgb3V0LiBXaGls
ZSBhdCBpdCwgSSdtIHJlbW92aW5nIHRoZSBpZgo+IGNvbmRpdGlvbiBjb21wbGV0ZWx5IGFzIHN1
Z2dlc3RlZCwgc2luY2UgdGhpcyBjb2RlIGlzIHJ1biBvbmx5IG9uIG10NzYyMQo+IFNvQywgc28g
dGhlcmUgaXMgbm8gbmVlZCB0byBjaGVjayBmb3IgdGhlIHNpbGljb24gcmV2aXNpb25zLgpTb3Vu
ZHMgZ29vZC4KPiAKPiBSZWY6IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvcGlwZXJtYWlsL29w
ZW53cnQtZGV2ZWwvMjAxNy1Ob3ZlbWJlci8wMDk4ODIuaHRtbAo+IFJlZjogaHR0cHM6Ly9mb3J1
bS5vcGVud3J0Lm9yZy90L210ay1zb2MtZXRoLXdhdGNoZG9nLXRpbWVvdXQtYWZ0ZXItcjExNTcz
LzUwMDAwLzEyCj4gU3VnZ2VzdGVkLWJ5OiBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Cj4g
UmVwb3J0ZWQtYnk6IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gLS0tCj4gLi4uL2RyaXZlcnMvbmV0
L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjEuYyAgICAgICB8IDEyICsrKy0tLS0tLS0tLQo+
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9ldGhl
cm5ldC9tZWRpYXRlay9nc3dfbXQ3NjIxLmMgYi90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQu
MTQvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvZ3N3X210NzYyMS5jCj4gaW5kZXggODli
ZTIzOTAwNzM4Li4yMzJiY2Q4Y2Y0ZWEgMTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlw
cy9maWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL2dzd19tdDc2MjEuYwo+
ICsrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9ldGhlcm5l
dC9tZWRpYXRlay9nc3dfbXQ3NjIxLmMKPiBAQCAtOTgsMTUgKzk4LDkgQEAgc3RhdGljIHZvaWQg
bXQ3NjIxX2h3X2luaXQoc3RydWN0IG10NzYyMF9nc3cgKmdzdywgc3RydWN0IGRldmljZV9ub2Rl
ICpucCkKPiAgICBtdDc1MzBfbWRpb193MzIoZ3N3LCAweDcwMDAsIDB4Myk7Cj4gICAgdXNsZWVw
X3JhbmdlKDEwLCAyMCk7Cj4gCj4gLSAgICBpZiAoKHJ0X3N5c2NfcjMyKFNZU0NfUkVHX0NISVBf
UkVWX0lEKSAmIDB4RkZGRikgPT0gMHgwMTAxKSB7Cj4gLSAgICAgICAgLyogKEdFMSwgRm9yY2Ug
MTAwME0vRkQsIEZDIE9OLCBNQVhfUlhfTEVOR1RIIDE1MzYpICovCj4gLSAgICAgICAgbXRrX3N3
aXRjaF93MzIoZ3N3LCAweDIzMDVlMzBiLCBHU1dfUkVHX01BQ19QMF9NQ1IpOwo+IC0gICAgICAg
IG10NzUzMF9tZGlvX3czMihnc3csIDB4MzYwMCwgMHg1ZTMwYik7Cj4gLSAgICB9IGVsc2Ugewo+
IC0gICAgICAgIC8qIChHRTEsIEZvcmNlIDEwMDBNL0ZELCBGQyBPTiwgTUFYX1JYX0xFTkdUSCAx
NTM2KSAqLwo+IC0gICAgICAgIG10a19zd2l0Y2hfdzMyKGdzdywgMHgyMzA1ZTMzYiwgR1NXX1JF
R19NQUNfUDBfTUNSKTsKPiAtICAgICAgICBtdDc1MzBfbWRpb193MzIoZ3N3LCAweDM2MDAsIDB4
NWUzM2IpOwo+IC0gICAgfQo+ICsgICAgLyogKEdFMSwgRm9yY2UgMTAwME0vRkQsIEZDIE9GRiwg
TUFYX1JYX0xFTkdUSCAxNTM2KSAqLwo+ICsgICAgbXRrX3N3aXRjaF93MzIoZ3N3LCAweDIzMDVl
MzBiLCBHU1dfUkVHX01BQ19QMF9NQ1IpOwo+ICsgICAgbXQ3NTMwX21kaW9fdzMyKGdzdywgMHgz
NjAwLCAweDVlMzBiKTsKPiAKPiAgICAvKiAoR0UyLCBMaW5rIGRvd24pICovCj4gICAgbXRrX3N3
aXRjaF93MzIoZ3N3LCAweDgwMDAsIEdTV19SRUdfTUFDX1AxX01DUik7CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
