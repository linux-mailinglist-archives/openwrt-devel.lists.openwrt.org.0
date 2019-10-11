Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87341D3B90
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 10:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wGFi7+HWxgilZvV7so4nb/SViqEkPqwNx9DRp+pzTM=; b=rQVOkcm7tzHlaZ
	9kuo4qd3ndLemVeXhN/eDWiClc+q6JP76ljkR4SkqCiyoyfyQwm4pfPIE+MXjBEuO7EHcaI228+Fe
	Pz2Z03nnsj4kMavSTYjxlrWHBX/nX9aH3oZf5x6UJBLxAXbWD1nB8f7SA21l8KFUmml+IefeBOsg1
	7ZLO2gn4V4WG8KWyE+Gwp6GsBypWps9A/aYX1tORM8bHUbfRkcIfWg+qaVigfpho2d3cRO5FSxM0S
	RGufdmpAgzQqtBk1r2LINldiOFtzjyddumaXtvuTTISUx7Y100Z+2p+buR9EovZdBTmBFAf+amE10
	RRJVW+Z3XGTcinxzh3ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqbt-0006wB-8F; Fri, 11 Oct 2019 08:49:17 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqbk-0006vb-Nc
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 08:49:10 +0000
Received: by mail-oi1-x242.google.com with SMTP id a15so7380048oic.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 11 Oct 2019 01:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZKeEki1f07ZgTibVYBVsfr6E1baRxnpZRTa2sTdz6pc=;
 b=Xfg5eq5m8bWCPyEL1h5fjVCOZUgwk0Qw/PzPehha5gL5V0Cven+nfdIE93TZ/UJqnE
 wh3K9TInmNGd9y8o580UluzN766V6rqjbbDG1FOQA6+DHZaFa1oyIbGBmn8I9mHELmuH
 B1QvnBcV3lsMNA0NWlO0wdQtQWVl5QBSyXZgJHyukMO7//fchrEdBzm80UA0X6KGIICh
 YWOagJFvX1zANIuZPDYSBooz6p7ObgTviDDMXiaFf/pKTmkaYiCZp90bafJ+RTlkzsnv
 FR8yBDtrLYx7zs/FJlmlOR2pYaS+yl4dhsrs/lL+48VqMRtQteJ0C+qZGJkjRZ2Ax65S
 YDDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZKeEki1f07ZgTibVYBVsfr6E1baRxnpZRTa2sTdz6pc=;
 b=ChOpIRAraXC3uH7Juy7t1DFc8iTyBuNARban4+RDyXrt6a9VYjLgNXnFTg3x1xGIJq
 GHV8Y8tCri4MpLHBC1V4FYF28tfUryLPWLamNj6qRml+sX4j/TccKDTZblSRSGNL7rCp
 WC714xRnEABHPI2BLCPFr0uMBUWz8kLMQmz3Ztj1gIgtW2KgXlOyICnBFCgPqeUUsgjK
 aSW+IiXbCptp9EVBL/NBrvuqApi7ohLvInFtrN0Sm/PHj+wdMCnPYEEygJKPsU42I4+C
 pIP8kkP5E0m+7U2+U91ZMtA+tVJK+s7lqjzncw7/8xTFC04fTGip0wusGA/M68hjtlfx
 J9UA==
X-Gm-Message-State: APjAAAWh+DgVR+pbX7KE660VpAtSarS8Qu1LP+LMqgh871qyoWwcAZ0+
 UUM9fcIVPf4YnFQPCgNnY3D7I9UHEPQbxVBWYrBGFk1J
X-Google-Smtp-Source: APXvYqzT6aXm4facvr1OHsaoN2rc8MIpdOuvf871vRLq2gEaTn7jP/OuqW1H2TbSLCk05hXQakSW0Jxph32CsATZ1Co=
X-Received: by 2002:aca:4c56:: with SMTP id z83mr11424825oia.113.1570783747172; 
 Fri, 11 Oct 2019 01:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191011084204.19790-1-ynezz@true.cz>
In-Reply-To: <20191011084204.19790-1-ynezz@true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 11 Oct 2019 01:49:56 -0700
Message-ID: <CAKxU2N-=E8T0pFfep5t6cn7yWP=8_Mb2Nbge8DX38tC6E=+D2Q@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014908_768235_D56A9DDA 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH urngd 0/4] sync with upstream,
 fixes and GitLab CI
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgMTo0MiBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IEhpLAo+Cj4gdGhpcyBwYXRjaCBzZXJpZXMgc3luYyBqaXR0ZXJlbnRy
b3B5LXJuZ2Qgd2l0aCB1cHN0cmVhbSByZWxlYXNlIHYxLjEuMCAocGx1cwo+IG9uZSBhZGRpdGlv
bmFsIGNsYW5nIGNvbXBpbGUgZml4IHVuY292ZXJlZCBieSBDSSkgYWRkcyBpbml0aWFsIHN1cHBv
cnQgZm9yIENJCj4gdGVzdGluZyBhbmQgZml4ZXMgdGhlIGlzc3VlcyB1bmNvdmVyZWQgYnkgdGhp
cyBuZXcgQ0kgdGVzdHMuIFRob3NlIENJIHRlc3RzCj4gYXJlIGN1cnJlbnRseSB1c2luZyBteSBw
cm9vZi1vZi1jb25jZXB0IG9wZW53cnQtY2lbMV0gaW4gb3JkZXIgdG86CklzIHRoaXMgcmVsYXRl
ZCB0bwpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0
L2xpbnV4LW5leHQuZ2l0L2NvbW1pdC8/aD1uZXh0LTIwMTkxMDExJmlkPTNmMmRjMjc5OGI4MTUz
MWZkOTNhM2I5YjdjMzlkYTQ3ZWM2ODllNTUKPwo+Cj4gICogaW1wcm92ZSB0aGUgcXVhbGl0eSBv
ZiB0aGUgY29kZWJhc2UgaW4gdmFyaW91cyBhcmVhcwo+ICAqIGRlY3JlYXNlIGNvZGUgcmV2aWV3
IHRpbWUgYW5kIGhlbHAgbWVyZ2luZyBjb250cmlidXRpb25zIGZhc3Rlcgo+ICAqIGdldCBhdXRv
bWFnaWMgZmVlZGJhY2sgbG9vcCBvbiB2YXJpb3VzIHBsYXRmb3JtcyBhbmQgdG9vbHMKPiAgICAt
IG91dCBvZiB0cmVlIGJ1aWxkIHdpdGggT3BlbldydCBTREsgb24gZm9sbG93aW5nIHRhcmdldHM6
Cj4gICAgICAqIGF0aDc5LWdlbmVyaWMKPiAgICAgICogaW14Ni1nZW5lcmljCj4gICAgICAqIG1h
bHRhLWJlCj4gICAgICAqIG12ZWJ1LWNvcnRleGE1Mwo+ICAgIC0gb3V0IG9mIHRyZWUgbmF0aXZl
IGJ1aWxkIG9uIHg4Ni82NCB3aXRoIEdDQyAodmVyc2lvbnMgNywgOCwgOSkgYW5kIENsYW5nIDkK
PiAgICAtIG91dCBvZiB0cmVlIG5hdGl2ZSB4ODYvNjQgc3RhdGljIGNvZGUgYW5hbHlzaXMgd2l0
aCBjcHBjaGVjayBhbmQKPiAgICAgIHNjYW4tYnVpbGQgZnJvbSBDbGFuZyA5Cj4KPiAxLiBodHRw
czovL2dpdGxhYi5jb20veW5lenovb3BlbndydC1jaS8KPgo+IENoZWVycywKPgo+IFBldHIKPgo+
IFBldHIgxaB0ZXRpYXIgKDQpOgo+ICAgQWRkIGluaXRpYWwgR2l0TGFiIENJIHN1cHBvcnQKPiAg
IEZpeCB3cm9uZyB0eXBlcyBpbiBmb3JtYXQgc3RyaW5ncyB1c2VkIGluIGRlYnVnIGJ1aWxkCj4g
ICBqaXR0ZXJlbnRyb3B5LXJuZ2Q6IHVwZGF0ZSB0byB2ZXJzaW9uIHYxLjEuMCArIGNsYW5nIGNv
bXBpbGUgZml4Cj4gICBUYWcgdmVyc2lvbiAxLjAuMQo+Cj4gIC5naXRsYWItY2kueW1sICAgICAg
ICAgICAgICB8IDcgKysrKysrKwo+ICAzcmRwYXJ0eS9qaXR0ZXJlbnRyb3B5LXJuZ2QgfCAyICst
Cj4gIENNYWtlTGlzdHMudHh0ICAgICAgICAgICAgICB8IDIgKy0KPiAgdXJuZ2QuYyAgICAgICAg
ICAgICAgICAgICAgIHwgNCArKy0tCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IC5naXRsYWItY2kueW1sCj4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
