Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC1F10C00B
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 23:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSYtIqRuBB4JBoanSUdNN+wpql1ki10HuNQRAuLWZic=; b=ZCBkWgVBDUMept
	EVXS9i3WQ7Ik36UIuIeMX7Yqe0IpQEZbvJ3YkDOCv1sVfOqiTL45+pappbFWZ1XlitZB9R4xai6fG
	GucGbCVKmT0X0jCxpS0RPpI2Bz0dIZ20IgWvCblocbqIr6FmoQb8hEX5OO6w4kTLKkVEJ4v247U9q
	xXExmuLmWP5D8Pj+C/QXPF3uxSpJ/Tdzkb/K/XzjbwROTK59QbWlbQDFq/aCfrPKnuadKHKFaysAJ
	xVJB/IHz+q2bCvRbclZ6YugrcuE/5sDtoGcHP4f7rjwi78tyCA/BJZW7bKB0i7rgdFI0S2JoEuY5y
	kJdh4KkFMiXE5U7S6z1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5YX-0002EN-Pu; Wed, 27 Nov 2019 22:13:05 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5YP-0002Dj-VP
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 22:12:59 +0000
Received: by mail-ot1-x344.google.com with SMTP id 66so14380594otd.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 14:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZC2t06DeWX5VO92QBAAxH0V5dCQLgcLxDokfDggITI8=;
 b=My3Les0ooyfi0qj0AsKtaLBYvpSpMWTkspDjVHapdtwsj0TyQYjnmIuuBlYyRR+1xA
 OXuJNItOaLApdax1QFwzOFh8QPgMHWA+04aUe5Pw5X11NGh0kLYyAjM4j83aYbLnlRRc
 5PqKLYsDXaCJAYG2v1MzKe+K2DzJzeOr6kDqpyw2GiSXhS8JwRncbMAvv2IJZJRbVC1l
 1uPbo5df4FDmIvBqUeCRUpyCXdv/og1z/8bwBSHEeUgqSCjt/OEZoxatwhdRih02Mow1
 2f71bZW9VUGxIwm9X9QWOp84QxS7JUjgDic6SPCNwGhLN27Rk++5zdoLN6lv7ukR5dO3
 ghHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZC2t06DeWX5VO92QBAAxH0V5dCQLgcLxDokfDggITI8=;
 b=f1uDpalTrDVO0Lg/YNHol61kGojKDQC80eOMy31trl4ReSfwT+ubysEhJkVzv1rXXN
 FZgW+VPtAWZh3fOzluo8aVX203/Gc09RhuIwsz3reWEFH6HDQJczjf8FyEQ8sUYbQwr9
 xKIT7TBc33b0IoLqn9xAXKP76Q3a9vlshwlJHF3du3TtQBGKTyKvF1hApbGS1MYtcWe8
 wTLvmKfH66cXbilteCzspXBBg1dfkb0E9OWNHdRH41bbEkV2kdYiBEJmx/AQ9r3kKHa6
 Ylsse9Ab3EqgrbW6ksPVLJoMmtqzZHRSV8rXAUJAMTHjEQPggki0WjNZCwUxBSIU8ae1
 lLpw==
X-Gm-Message-State: APjAAAUY492Y0kNfjj/yegfHT/CjAfbJYEVqfnszeGJYxtFXHAvu9gBr
 pwvDSmlsOyI+Zo2Bo7eHLwNG1tMSHqN40PU+40c=
X-Google-Smtp-Source: APXvYqycEQW9P3e/og3JkNtl9wNuUAjjdfQnTFjlmIckaGRI9G1aTsxWBmPsHkPvLeNIZBX84YeUMwSf2hkik+SCh+k=
X-Received: by 2002:a05:6830:1149:: with SMTP id
 x9mr4978391otq.47.1574892776032; 
 Wed, 27 Nov 2019 14:12:56 -0800 (PST)
MIME-Version: 1.0
References: <20191125224418.266082-1-rosenp@gmail.com>
 <20191127104917.GB37269@meh.true.cz>
In-Reply-To: <20191127104917.GB37269@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 27 Nov 2019 14:12:44 -0800
Message-ID: <CAKxU2N-M1rdpbs-pL0UtMp5N00-h_4QCnzZ-UDMs7=Qh6DioFA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_141258_038725_DE15502F 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCHv3] tools/pkg-config: Replace with pkgconf
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

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMjo0OSBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAxOS0xMS0y
NSAxNDo0NDoxOF06Cj4KPiBIaSwKPgo+IHlvdSdyZSB0cnlpbmcgdG8gZG8gYSBsb3Qgb2YgdGhp
bmdzIGluIG9uZSBwYXRjaCwgbWFraW5nIGl0IGhhcmQgdG8gcmV2aWV3LAo+IHBsZWFzZSBzcGxp
dCBpdCB1cC4KPgo+IDEuIHN3aXRjaCB0byBwa2djb25mCj4gMi4gc2hlbGwgY2hlY2sgZml4Cj4g
My4gbWVzb24gZml4Cj4KPiA+IC1pZmVxICgkKEhPU1RfT1MpLERhcndpbikKPiA+IC1IT1NUX0xE
RkxBR1MgKz0gLWZyYW1ld29yayBDb3JlRm91bmRhdGlvbiAtZnJhbWV3b3JrIENhcmJvbgo+ID4g
LWVuZGlmCj4KPiBTbyBpdCBjb21waWxlcyBhbmQgd29ya3Mgb24gbWFjT1MganVzdCBmaW5lPyBZ
b3UgY2FuIGFzayBLZXZpbiAobGRpcikgb24gSVJDCj4gdG8gYnVpbGQgdGVzdCB0aGlzIGZvciB5
b3UuClRob3NlIExERkxBR1MgYXJlIHByb2JhYmx5IHdvcnRobGVzcy4gSSdsbCB0cnkgdG8gdGVz
dCBvbiBtYWNPUy4KPgo+ID4gZGlmZiAtLWdpdCBhL3Rvb2xzL3BrZ2NvbmYvZmlsZXMvcGtnLWNv
bmZpZyBiL3Rvb2xzL3BrZ2NvbmYvZmlsZXMvcGtnLWNvbmZpZwo+ID4gbmV3IGZpbGUgbW9kZSAx
MDA3NTUKPiA+IGluZGV4IDAwMDAwMDAwMDAuLjY1NzlhMTRmODYKPiA+IC0tLSAvZGV2L251bGwK
PiA+ICsrKyBiL3Rvb2xzL3BrZ2NvbmYvZmlsZXMvcGtnLWNvbmZpZwo+Cj4gV2hhdCBoYXMgaGFw
cGVuZWQgd2l0aCB0aGUgb2xkIHBrZy1jb25maWc/IEhhdmUgeW91IGZvcmdldCB0byBgZ2l0IG12
L2dpdCBhZGRgPwpJdCdzIGJlY2F1c2UgSSByZW5hbWVkIHRoZSB3aG9sZSBkaXJlY3RvcnkgYW5k
IGRpZCBhIGhlYXZ5IGVub3VnaApjaGFuZ2UgdG8gdGhlIHdyYXBwZXIgc2NyaXB0IHRoYXQgZ2l0
IGNvbnNpZGVycyBpdCBhIGNvbXBsZXRlbHkKZGlmZmVyZW50IGZpbGUuCj4KPiA+IEBAIC0wLDAg
KzEsNiBAQAo+ID4gKyMhL2Jpbi9zaAo+ID4gKwo+ID4gKyIkKGRpcm5hbWUgIiQwIikvcGtnLWNv
bmZpZy5yZWFsIiBcCj4KPiBUaGlzIGNoYW5nZSB3YXMgc3VnZ2VzdGVkIGJ5IHNoZWxsY2hlY2s/
IFdoeSBpcyB0aGlzIGNoYW5nZSBuZWVkZWQ/IFRoaXMgbmVlZHMKPiB0byBnbyBpbnRvIHNlcGFy
YXRlIGNvbW1pdCB3aXRoIGEgcHJvcGVyIGRlc2NyaXB0aW9uLgpUaGlzIHdhcyBhY3R1YWxseSBh
IGNoYW5nZSBJIGRpZCB3aGlsZSB0ZXN0aW5nIG91dCB2YXJpb3VzIHBrZ2NvbmYKZmFpbHVyZXMs
IGluY2x1ZGluZyB3aXRoIG1lc29uLiBJdCBzZWVtcyBjb3JyZWN0IHRvIG1lLgo+Cj4gPiBkaWZm
IC0tZ2l0IGEvdG9vbHMvcGtnY29uZi9wYXRjaGVzLzAwMDEtZi1wa2djb25mLW1lc29uLnBhdGNo
IGIvdG9vbHMvcGtnY29uZi9wYXRjaGVzLzAwMDEtZi1wa2djb25mLW1lc29uLnBhdGNoCj4gPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMC4uM2VkNDdhZGM5NQo+ID4g
LS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvdG9vbHMvcGtnY29uZi9wYXRjaGVzLzAwMDEtZi1wa2dj
b25mLW1lc29uLnBhdGNoCj4gPiBAQCAtMCwwICsxLDMxIEBACj4gPiArRnJvbSAwNWVmNTg1MzJi
NzVjMzZmYzE5ZWI5ZDJkMWZlNGM0NjE5NTcwNmJmIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQo+
ID4gK0Zyb206IEFuZHJlIEhlaWRlciA8YS5oZWlkZXJAZ21haWwuY29tPgo+ID4gK0RhdGU6IE1v
biwgMjUgTm92IDIwMTkgMDk6MzY6NDcgKzAxMDAKPiA+ICtTdWJqZWN0OiBbUEFUQ0hdIGYgcGtn
Y29uZi9tZXNvbgo+Cj4gVGhpcyBwYXRjaCBuZWVkcyBhIGJldHRlciBuYW1lIGFuZCBiZXR0ZXIg
ZXhwbGFuYXRpb24sIGRlc2NyaXB0aW9uLiBUaGlzIGlzCj4gc29tZSB1cHN0cmVhbSBiYWNrcG9y
dCBvciB3aGF0cyB0aGUgb3JpZ2luIG9mIHRoaXMgcGF0Y2g/Cj4KPiA+ICstLS0KPiA+ICsgdG9v
bHMvcGtnY29uZi9wYXRjaGVzL21lc29uLnBhdGNoIHwgMTIgKysrKysrKysrKysrCj4gPiArIDEg
ZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4gPiArIGNyZWF0ZSBtb2RlIDEwMDY0NCB0
b29scy9wa2djb25mL3BhdGNoZXMvbWVzb24ucGF0Y2gKPiA+ICsKPiA+ICtkaWZmIC0tZ2l0IGEv
dG9vbHMvcGtnY29uZi9wYXRjaGVzL21lc29uLnBhdGNoIGIvdG9vbHMvcGtnY29uZi9wYXRjaGVz
L21lc29uLnBhdGNoCj4gPiArbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ICtpbmRleCAwMDAwMDAw
MDAwLi5lMGEyOTQ2ZjMyCj4gPiArLS0tIC9kZXYvbnVsbAo+ID4gKysrKyBiL3Rvb2xzL3BrZ2Nv
bmYvcGF0Y2hlcy9tZXNvbi5wYXRjaAo+ID4gK0BAIC0wLDAgKzEsMTIgQEAKPiA+ICsrZGlmZiAt
dXIgcGtnY29uZi0xLjYuMy1vcmlnL2NsaS9tYWluLmMgcGtnY29uZi0xLjYuMy9jbGkvbWFpbi5j
Cj4gPiArKy0tLSBwa2djb25mLTEuNi4zLW9yaWcvY2xpL21haW4uYyAgIDIwMTktMDctMTIgMTM6
NTM6MTIuMDAwMDAwMDAwICswMjAwCj4gPiArKysrKyBwa2djb25mLTEuNi4zL2NsaS9tYWluLmMg
ICAgICAgIDIwMTktMTEtMjUgMDk6MzI6NTMuNTEyNzg0NDc5ICswMTAwCj4gPiArK0BAIC0xMDAy
LDcgKzEwMDIsNyBAQAo+ID4gKysKPiA+ICsrICAgIGlmICgod2FudF9mbGFncyAmIFBLR19WRVJT
SU9OKSA9PSBQS0dfVkVSU0lPTikKPiA+ICsrICAgIHsKPiA+ICsrLSAgICAgICAgICAgaWYgKGFy
Z2MgPiAyKQo+ID4gKysrICAgICAgICAgICBpZiAoMCAmJiBhcmdjID4gMikKPgo+IFVoPwo+Cj4g
SXQncyBqdXN0IG1lIG9yIHRoaXMgc2VlbXMgbGlrZSBhIGhhY2ssIHNvbWV0aGluZyB3aGljaCBz
aG91bGQgYmUgZml4ZWQgaW4KPiBtZXNvbiBpbnN0ZWFkPyBJIHdvdWxkIHByZWZlciB0byBoYXZl
IGEgcGF0Y2ggd2hpY2ggaXMgYWNjZXB0ZWQgdXBzdHJlYW0uCj4gcGtnY29uZiBpcyBtYWludGFp
bmVkLCByaWdodD8KSSdsbCB1c2UgdGhlIHBhdGNoIHBvc3RlZCBiZWxvdy4gSSBvcmlnaW5hbGx5
IHRyaWVkIHRvIGZpeCB0aGlzIGlzc3VlCmluIE1lc29uLCBidXQgbXkgcHl0aG9uIGlzIG5vdCBn
b29kIGVub3VnaC4gRW5kZWQgdXAgY3Jhc2hpbmcgaXQuIEkKZmVlbCB0aGF0IG1lc29uIGlzIG5v
dCB0aGUgcmlnaHQgcGxhY2UgdG8gZml4IHRoaXMuCj4KPiAtLSB5bmV6egoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
