Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7188199C80
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 19:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHPtGsSjXUxBr2nwbb1HuVMtzYHoPt5iE0TyxAOvqm4=; b=Kxr9jwHrgNyvdL
	johJKFqGiN20jaYovIMPx+JxeJhOxwofLwGHQsa2bB6KiJs00U8ZmJ/5UT1K2FOP0DKYD6rLqMTTk
	KZD1TouHXb53t5Yazugo194uDxxopLD2xq3lnlMtqNr5KhGGc8wttMQIQUZMW9o5ZzeCswjmskw+S
	D+5p8DaUqIhmkmXsnVb2Sf38FSKKX1VFsH0hL9C+Y9vq+ZopeWsNkq+/WKq3wZqungPXqoPAiQQQ0
	GHdJvSF1saTr1xJFzkQ36aBabHVfZ5ds5mEPlnQtLysxaUANsmMCZww48xTSdBKb5SJvleETgDUXi
	Lg/N4jzV9MYtW6QBAcHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKKo-0000qV-Mk; Tue, 31 Mar 2020 17:05:54 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKKg-0000oO-FK
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 17:05:48 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 02VH5Zrh010486
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 31 Mar 2020 19:05:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1585674335; bh=Pcijzfk8Qasz3p//L235F3nPl7P47iqKvUBUKkubKgU=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=nCNM12Cpz9BaxD9NLj4RAxfvyapTEm9oq02PLrsdbKkoijdClljVyHroliLKH3ojH
 qcbPgwxm0ug1kSXcBIHMwShvTescL2dt/3zL5thlnX1QUom8+ORHuzHo4VyfawKgsu
 qQSA3hPCabjc3vxKielLodE9pf+x6ILdSVN+vLVY=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jJKKU-0005rS-W6; Tue, 31 Mar 2020 19:05:35 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: <mail@adrianschmutzler.de>
Organization: m
References: <010901d6075b$d16bf560$7443e020$@adrianschmutzler.de>
Date: Tue, 31 Mar 2020 19:05:34 +0200
In-Reply-To: <010901d6075b$d16bf560$7443e020$@adrianschmutzler.de> (mail's
 message of "Tue, 31 Mar 2020 14:56:30 +0200")
Message-ID: <87pncs5uap.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_100547_028723_54608538 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Remove generic OpenWrt copyright spread through
 files
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gd3JpdGVzOgoKPiBJIGZyZXF1ZW50bHkgZW5jb3Vu
dGVyIGZpbGVzIGluIHRoZSBPcGVuV3J0IHRydW5rIChib3RoIE1ha2VmaWxlcyBhbmQgZmlsZXMg
aW5jbHVkZWQgaW4gaW1hZ2VzKSB0aGF0IGNvbnRhaW4gImdlbmVyaWMiIENvcHlyaWdodCBpbmZv
cm1hdGlvbiBsaWtlOgo+Cj4gIwo+ICMgQ29weXJpZ2h0IChDKSAyMDE0LTIwMTYgT3BlbldydC5v
cmcKPiAjIENvcHlyaWdodCAoQykgMjAxNiBMRURFLVByb2plY3Qub3JnCj4gIwo+Cj4gQnkgImdl
bmVyaWMiLCBJJ20gcmVmZXJyaW5nIHRvIHRoZSBmYWN0IHRoYXQgdGhpcyBjbGFpbXMgT3Blbldy
dCBjb3B5cmlnaHQgaW5zaWRlIHRoZSBPcGVuV3J0IHByb2plY3RzIGNvZGUsIHdoaWNoIHNlZW1z
IHJlZHVuZGFudCB0byBtZS4KCklBTkFMLCBidXQgeW91IG1pZ2h0IHdhbnQgdG8gY29uc2lkZXIK
aHR0cHM6Ly9yZXVzZS5zb2Z0d2FyZS9mYXEvCgoKPiBJIHdvbmRlciB3aGV0aGVyIGl0IHdvdWxk
IGJlIGFwcHJvcHJpYXRlIHRvIHJlbW92ZSB0aGVzZSAicmVkdW5kYW50Igo+IENvcHlyaWdodC9s
aWNlbnNlIGNvbW1lbnRzLiBUbyBtZSwgaXQganVzdCBsb29rcyBsaWtlIGEgd2FzdGUgb2Ygc3Bh
Y2UKPiAoaW4gY2FzZSBvZiB0aGUgYm9hcmQuZCBmaWxlIGFjdHVhbGx5IHNwYWNlIG9uIHRoZSBk
ZXZpY2UpIHdoZXJlIGl0IGlzCj4gbm90IHJlYWxseSBjb252ZXlpbmcgYW55IGFkZGl0aW9uYWwg
aW5mb3JtYXRpb24uCgoKV2VsbCwgcGVyc29uYWxseSBJIGZpbmQgaXQgZW50ZXJ0YWluaW5nIGV2
ZXJ5IHRpbWUgSSBmaW5kIG9uZSBvZiB0aG9zZQppbnNpZGUgc29tZSBPRU0gZmlybXdhcmUgOi0p
CgpMaWtlIHRoZSBuaWNlIE1hcnZlbGwgYmFzZWQgQ2lzY28gU0cyNTAtMDggc3dpdGNoIEkgcmVj
ZW50bHkgZ290OgoKYmpvcm5AbWlyYWN1bGl4Oi90bXAvX2ltYWdlX3Rlc2xhXzI1MF8yLjUuMC45
MC5iaW4uZXh0cmFjdGVkL19FMERFMC5leHRyYWN0ZWQvXzkwQjZFMC5leHRyYWN0ZWQvY3Bpby1y
b290JCBncmVwIC1yIE9wZW5XcnQgZXRjL2luaXQuZC8KZXRjL2luaXQuZC9zdWRvOiMgQ29weXJp
Z2h0IChDKSAyMDE0IE9wZW5XcnQub3JnCmV0Yy9pbml0LmQvcm9zLWluaXQ6IyBDb3B5cmlnaHQg
KEMpIDIwMTQgT3BlbldydC5vcmcKZXRjL2luaXQuZC9yb3M6IyBDb3B5cmlnaHQgKEMpIDIwMTQg
T3BlbldydC5vcmcKZXRjL2luaXQuZC9waHA1LWZhc3RjZ2k6IyBDb3B5cmlnaHQgKEMpIDIwMTAt
MjAxMSBPcGVuV3J0Lm9yZwpldGMvaW5pdC5kL25naW54OiMgQ29weXJpZ2h0IChDKSAyMDE1IE9w
ZW5XcnQub3JnCmV0Yy9pbml0LmQvbXRwbGFwOiMgQ29weXJpZ2h0IChDKSAyMDA5LTIwMTEgT3Bl
bldydC5vcmcKZXRjL2luaXQuZC9sb2c6IyBDb3B5cmlnaHQgKEMpIDIwMTMgT3BlbldydC5vcmcK
ZXRjL2luaXQuZC9kbnNtYXNxOiMgQ29weXJpZ2h0IChDKSAyMDA3LTIwMTIgT3BlbldydC5vcmcK
ZXRjL2luaXQuZC9kbnNtYXNxOiAgICAgICAgICAgICBsb2NhbCBob3N0bmFtZT0iJCh1Y2lfZ2V0
IHN5c3RlbSBAc3lzdGVtWzBdIGhvc3RuYW1lIE9wZW5XcnQpIgpldGMvaW5pdC5kL2RidXM6IyBD
b3B5cmlnaHQgKEMpIDIwMDctMjAxMSBPcGVuV3J0Lm9yZwpldGMvaW5pdC5kL2Jvb3Q6IyBDb3B5
cmlnaHQgKEMpIDIwMDYtMjAxMSBPcGVuV3J0Lm9yZwpldGMvaW5pdC5kL2F2YWhpLWRhZW1vbjoj
IENvcHlyaWdodCAoQykgMjAwNiBPcGVuV3J0Lm9yZwpldGMvaW5pdC5kL2FhYWE6IyBDb3B5cmln
aHQgKEMpIDIwMTUgT3BlbldydC5vcmcKCgpUaGlzIGlzIGFuIGltcG9ydGFudCByZWFzb24gdG8g
a2VlcCB0aGUgQ29weXJpZ2h0IHRleHQsIGV2ZW4gaW4gZmlsZXMKdGhhdCBnbyBpbnRvIHRoZSBp
bWFnZSBJTUhPLgoKCkJqw7hybiAobm90IGV2ZW4gYSBtZW1iZXIsIGJ1dCBJIGNhbiBhbHdheXMg
cHJvdmlkZSBhbiBvcGluaW9uIG9uIGFueQpzdWJqZWN0IGFueXdheSA6LSkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
