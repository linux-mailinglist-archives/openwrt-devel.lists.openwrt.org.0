Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B0613E65
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 10:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hKqpX3DjOu/LzNP5BkBR4AnIHT8EMOVYtW/LsfDShtU=; b=qPN3JwEHgY6Dt751E7++ZFVxb
	GqX2J2XmcGe8h98nIfwNF6ofN+3lw/TbEQPZdNOHCXZBR0KE/o0MV6EBPhNIqr6BkB2cWrFQvwrFq
	5VkSDraIqS2swGSdB22h1pG2+hlqQSQbfzme0D5U6Ucp0OyidyIOpNALunZxopQlgKqvm5SPanvXR
	pIOAm5YqwJQR+U6zfjYGSjjXtK8VZZH95kcWnw6RAEI3MH2Eij6oF2aAB81nXJf0giaK83eQZeUlz
	oHZkEOqg6agTYBCergAVByq98ODjqS+8g7uBrKFJYKwnEeNz3eAeMM8qomc1eqhkDKTLJZ1BShzBm
	DaIo+7aQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNCFW-0002sH-I5; Sun, 05 May 2019 08:11:54 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNCFL-0002rg-NV
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 08:11:45 +0000
Received: by mail-ed1-x541.google.com with SMTP id p26so11545271edr.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 01:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=j7hB53dWSU2UMdkEo9zVdMcyEydNwOZzb39Zp/smMH4=;
 b=UMeJlCRXBj0nQ8rLtasNprmED4RCuHCniO/XZbdOmSz2HW9OmT7b7JdrzedX++eApq
 n1x8Mf3e5iRxvE1w390BPUOzUelErxnyDTP3LxjYEuBqVIqprROKjRsfHGLujE/VJkmU
 ohYnLF6IgLsD+s2ep0m9dRdhiTAS0S7i/ry1Dg9dEO/QJfL6jqwM+tLGpQeZBZ8FXR4+
 jYZTRMNP19RtmPlJXU0nFpcUhNQ4E3ErSoRRmBVOluj4OYfWDm87hCbDb2txK/qzejW1
 yxoj39MnnI6KYjGj+kUPTWEKnCBHYydRzIsStO/KgA8FVjSdL+i6fP7lyMR3EwSxi2Qo
 atzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=j7hB53dWSU2UMdkEo9zVdMcyEydNwOZzb39Zp/smMH4=;
 b=estVanmumRy3Wc9Ih/fXOuIsTvHbYgSGUXn+K9hZUjusYVPoAfR1/f0muvssOL0Nuy
 OjCj7ExD41gVB00QOGGuHx0GN0WuwwXsBsMjRXRkXhfhQsq6eqwXc5/MxOyF+iem2y0o
 cTvNFidvmS9qDYOd8Z7Do+IrZZF4aFhEXcykPw/66maoZFnKAifg0yNk2cifQhoRQ8+1
 4orHyjV6/2756bKlWCds0A8TtQdlORtCO7UenyafQ1+/1TKJKpqnNYKuvgKrGTuIUvXc
 cisO63v9i7SAT+xbiCZ/0dJEzxXE8CJbte/hL25AAK+xoBa7PExj/cl2xXRGLhxJnJiM
 6pwg==
X-Gm-Message-State: APjAAAVuPOgga/YF8KAvissVqfvdR0abElyf3ZMS6Tl8cS6VgJAF13oj
 4XFH3wmK2ZddO4hEOMkAUf0=
X-Google-Smtp-Source: APXvYqzEVcawnN3vdViWO/T1bTMN0nrZkpp2HLHGumEmvdBspaGWdyB+CE/AKUp56rcwih+Cq7RUHA==
X-Received: by 2002:a17:906:a4b:: with SMTP id
 x11mr13894633ejf.200.1557043901352; 
 Sun, 05 May 2019 01:11:41 -0700 (PDT)
Received: from ?IPv6:2a02:168:6806:0:f58c:e2cb:4e35:220a?
 ([2a02:168:6806:0:f58c:e2cb:4e35:220a])
 by smtp.gmail.com with ESMTPSA id j25sm999964ejt.74.2019.05.05.01.11.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 01:11:40 -0700 (PDT)
To: Christian Lamparter <chunkeey@gmail.com>,
 openwrt-devel@lists.openwrt.org, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
References: <20190424191439.32298-1-klaus.kudielka@gmail.com>
 <524607f2-518e-7517-97c5-2ea5ae71846d@gmail.com>
 <20190503193846.GI71477@meh.true.cz> <97316402.u0ukOGWoMv@debian64>
From: Klaus Kudielka <klaus.kudielka@gmail.com>
Message-ID: <39e13e97-a698-9e8a-72db-9cbf2a78298f@gmail.com>
Date: Sun, 5 May 2019 10:11:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <97316402.u0ukOGWoMv@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_011143_793281_1D71FC81 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klaus.kudielka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: improve
 lib/upgrade/common.sh
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: linus.walleij@linaro.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMDQuMDUuMTkgMTY6NTEsIENocmlzdGlhbiBMYW1wYXJ0ZXIgd3JvdGU6Cj4gT24gRnJpZGF5
LCBNYXkgMywgMjAxOSA5OjM4OjQ2IFBNIENFU1QgUGV0ciDFoHRldGlhciB3cm90ZToKPj4gS2xh
dXMgS3VkaWVsa2EgPGtsYXVzLmt1ZGllbGthQGdtYWlsLmNvbT4gWzIwMTktMDUtMDMgMjA6MTY6
MzldOgo+Pgo+Pj4gTGV0IG1lIHJlbWluZCB5b3UgdGhhdCB0aGUgY29tbW9uIG9uZSAqYWxvbmUq
IGJyZWFrcyBzeXN1cGdyYWRlIGZvciB0aG9zZQo+Pj4gZm91ciB0YXJnZXRzLCBhcyBUb21hc3og
YWxyZWFkeSBwb2ludGVkIG91dCBlYXJsaWVyLgo+PiBXZWxsLCBob3cgY291bGQgSSBrbm93IHdo
YXQgd2FzIHdyb25nIHdpdGggdjEgaWYgeW91IGRpZG4ndCBpbmNsdWRlZCB0aGUKPj4gY2hhbmdl
cyBiZXR3ZWVuIHYxIC0+IHYyIGluIHlvdXIgdjIgcGF0Y2ggOi0pCj4+Cj4+IEFueXdheSwgdGhh
bmtzIGZvciB0aGUgZXhwbGFuYXRpb24sIGl0IHdhc24ndCB0aGF0IG11Y2ggY2xlYXIgdG8gbWUg
ZnJvbSB0aGUKPj4gY29tbWl0IG1lc3NhZ2UsIHNvIGlmIHlvdSBkb24ndCBtaW5kLCBJJ2xsIGlu
Y2x1ZGUgdGhlIGRldGFpbHMgdGhlcmUgYXMgd2VsbAo+PiBpbiBvcmRlciB0byBoZWxwIGl0IGJl
dHRlciB1bmRlcnN0YW5kIHRvIG90aGVyIGZvbGtzLgo+Pgo+PiBNZXJnZWQgaW50byBteSBzdGFn
aW5nIHRyZWUgaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9zdGFnaW5nL3luZXp6
LmdpdDthPWNvbW1pdDtoPTE5NTE3OGY4OGVlN2IzODE1ZjliZWE2NmEyNDU0Y2NmZGYyMTM1YTUK
Pj4KPj4+IEluIG1vcmUgZGV0YWlsOgo+Pj4KPj4+IFRoZSByb290IG9mIHRoZSBwcm9ibGVtIGlz
IHRoYXQgdGhlICpleGlzdGluZyogZXhwb3J0X2Jvb3RkZXZpY2UgaW4KPj4+IC9saWIvdXBncmFk
ZS9jb21tb24uc2ggYmVoYXZlcyBkaWZmZXJlbnRseSwgaWYgdGhlIGtlcm5lbCBpcyBib290ZWQg
d2l0aAo+Pj4gcm9vdD0vZGV2Ly4uLiwgb3IgaWYgaXQgaXMgYm9vdGVkIHdpdGggcm9vdD1QQVJU
VVVJRD0uLi4KPj4+Cj4+PiBJbiB0aGUgZm9ybWVyIGNhc2UsIGl0IHJlcG9ydHMgYmFjayBtYWpv
ci9taW5vciBvZiB0aGUgcm9vdCBwYXJ0aXRpb24sCj4+PiBpbiB0aGUgbGF0dGVyIGNhc2UgaXQg
cmVwb3J0cyBiYWNrIG1ham9yL21pbm9yIG9mIHRoZSBjb21wbGV0ZSBib290IGRpc2suCj4+Pgo+
Pj4gVGhlIHRhcmdldHMgbWVudGlvbmVkIGFib3ZlIGhhdmUgYWRkZWQgd29ya2Fyb3VuZHMgdG8g
dGhpcyBiZWhhdmlvdXIsIGJ5Cj4+PiBzcGVjaWZ5aW5nICpuZWdhdGl2ZSogaW5jcmVtZW50cyB0
byB0aGUgZXhwb3J0X3BhcnRkZXZpY2UgZnVuY3Rpb24uCj4+Pgo+Pj4gQW5kIHRoZW4gY2FtZSB0
aGUgbXZlYnUgdGFyZ2V0IHRvIHVzZSBleHBvcnRfYm9vdGRldmljZSAvCj4+PiBleHBvcnRfcGFy
dGRldmljZSBhcyB3ZWxsLiBOb3csIGRpZmZlcmVudCBzdWJ0YXJnZXRzIGJvb3QgZGlmZmVyZW50
bHksCj4+PiBhbmQgdGhlIHdvcmthcm91bmQgd291bGQgYmUgZXZlbiBtb3JlIGNvbXBsZXguCj4+
Pgo+Pj4gSSB0aGluayBub3cgaXMgdGhlIHRpbWUgdG8gbWFrZSBleHBvcnRfYm9vdGRldmljZSBi
ZWhhdmUgY29uc2lzdGVudGx5LAo+Pj4gYW5kIHRvIHJlcG9ydCBtYWpvci9taW5vciBvZiB0aGUg
Ym9vdCBkaXNrLCBwZXJpb2QuCj4gSnVzdCBhIG5vdGUgaGVyZToKPgo+IFRoZSBleHBvcnRfYm9v
dGRldmljZSB3aXRoIGl0J3MgUEFSVFVVSUQtMDIgLyBzZFthLXpdMiBoYW5kbGluZyBpcyBub3Qg
dGhhdAo+IGdyZWF0LiBJZGVhbGx5IHRoZSBmaXhlZCBwYXJ0aXRpb24gc2hvdWxkIGJlIGF2b2lk
ZWQgYWx0b2dldGhlciBpbiBmYXZvdXIgb2YKPiBhIHVuaXF1ZSBmaWxlc3lzdGVtIGxhYmVsIG9y
IChsZXNzIGlkZWFsKSBhIGZpbGVzeXN0ZW0gVVVJRC4KPgo+IFRyb3VibGUgaXMgdGhhdCBzcXVh
c2hmcyBkb2VzIG5vdCBzdXBwb3J0IGVpdGhlci4gU28gdGhhdCdzIHdoZXJlIHRoZSBmaXhlZAo+
IFBBUlRVVUlEIGFuZCBzZFgvbW1jWCBkZXZpY2UgbmFtZXMgY29tZSBpbnRvIHBsYXkgYmVjYXVz
ZSBvdGhlcndpc2UgdGhlIGRldmljZXMKPiB3b3VsZG4ndCBib290LiAgU2FkbHkgSSB0aGluayBj
aGFuZ2VzIGxpa2UgdGhpcyB3aWxsIHByb2JhYmx5IGdvIG9uIHVudGlsCj4gZWl0aGVyIHNxdWFz
aGZzIGdldHMgdGhlc2UgbWV0YWRhdGEgaW1hZ2UgZmVhdHVyZXMgb3Igc29tZXRoaW5nIHJlcGxh
Y2VzCj4gc3F1YXNoZnMgdGhhdCBoYXMgaXQuCj4KPj4+IENvbnNlcXVlbnRseSwgdGhvc2UgdGFy
Z2V0cywgd2hpY2ggYm9vdCB3aXRoIHJvb3Q9L2Rldi8uLi4gKmFuZCogdXNlCj4+PiBleHBvcnRf
Ym9vdGRldmljZSAvIGV4cG9ydF9wYXJ0ZGV2aWNlLCBoYXZlIHRvIGJlIGFkYXB0ZWQgdG8gdXNl
Cj4+PiBwb3NpdGl2ZSBpbmNyZW1lbnRzLCBvdGhlcndpc2UgdGhleSBhcmUgYnJva2VuIGJ5IHRo
ZSBjaGFuZ2UKPj4+IHRvIGV4cG9ydF9ib290ZGV2aWNlLgo+Pj4KPj4+IFRoZSB0YXJnZXRzIGFm
ZmVjdGVkIHdlcmUgZWFzeSB0byBzcG90IHdpdGggZmluZCAmIGdyZXAuCj4gVHJ1ZSwgaXQgd291
bGQgaGF2ZSBiZWVuIGdyZWF0IGlmIHRoZSBjb21taXQgbWVzc2FnZSBpbmNsdWRlZCB0aGF0Cj4g
ZXhwb3J0X2Jvb3RkZXZpY2Ugbm93IGNvbnNpc3Rlbmx5IHdvcmtzIG9uIHRob3NlIGRldmljZXMg
d2hlbiB0aGUKPiByb290PSBpbiB0aGUgY21kbGluZSBtYXRjaGVzIHRoYXQgUEFSVFVVSUQtMDIs
IHNkW2Etel0yIG9yIG1tY2Jsa1swLTldcDIKPiBhbmQgbm90aGluZyBlbHNlLgo+Cj4gQmVjYXVz
ZSB0aGVyZSBhcmUgc3RpbGwgYSBmZXcgZGV2aWNlcyAoSSB0aGluayBHZW1pbmkgRElSLTY4NSwg
RElSLTMxMwo+IGFuZCBTUTIwMSwgYW5kIGEgS2lya3dvb2QgR29GbGV4IEhvbWUpIHRoYXQgaGF2
ZSB0aGUgcm9vdD0gb24gc2RhMSBvcgo+IHNkYTQgYW5kIGNvdWxkIGJlIGNvbnZlcnRlZCB0byB1
c2UgdGhlIGV4cG9ydF9ib290ZGV2aWNlIGZvciBzeXN1cGdyYWRlLgo+Cj4gQnV0IGFzIG9mIHll
dCwgSSBkb24ndCBzZWUgdGhhdCBhbnkgb2YgdGhlc2UgZGV2aWNlcyBoYXZlIHN5c3VwZ3JhZGUg
c3VwcG9ydC4KPiBTbyB5b3VyIHByb3Bvc2VkIHBhdGNoIGlzIGZpbmUsIHVubGVzcyB5b3Ugd2Fu
dCB0byBjb21lIHVwIHdpdGggYSBzb2x1dGlvbgo+IHRoYXQgY2FuIGRlYWwgd2l0aCB0aGUgb2Rk
LWJhbGxzLi4gQmVjYXVzZSB0aGF0IHdvdWxkIGJlIGF3ZXNvbWUhCldlbGwsIHRoZSBwcmltYXJ5
IGdvYWwgb2YgdGhpcyBwYXRjaCB3YXMgKGFuZCBzdGlsbCBpcykgdG8gZml4IHN5c3VwZ3JhZGUK
Zm9yIFR1cnJpcyBPbW5pYSwgd2l0aG91dCBpbnZlbnRpbmcgeWV0IGFub3RoZXIgd29ya2Fyb3Vu
ZCBmb3IgdGhlIHJhdGhlcgpzY2hpem9waHJlbmljIGJlaGF2aW91ci4KClBlcnNvbmFsbHkgSSB3
b3VsZCBwcmVwYXJlIGZvciBwb3RlbnRpYWwgZnV0dXJlIHVzZSBjYXNlcyBpbiBhIHNlcGFyYXRl
CnBhdGNoLiBUbyBkZWFsIHdpdGggbm9uLXN0YW5kYXJkIHBhcnRpdGlvbiBsYXlvdXRzLCBpdCBj
b3VsZCBiZSBhcyBzaW1wbGUKYXMgcmVwbGFjaW5nIHRoZSB0cmFpbGluZyAiMiIgd2l0aCAiWzEt
NF0iIGluIHRoZSBzaXggcGF0dGVybnMgb2YgdGhlCiRyb290cGFydCBjYXNlIHN0YXRlbWVudC4u
LiBpZiB0aGlzIGlzIHdoYXQgeW91IG1lYW4/CgpSZWdhcmRzLCBLbGF1cwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
