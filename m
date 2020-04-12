Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B837D1A60C6
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 23:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M3zsQ1XiB+acWSv1sXsSagpXXQnzoMFNQYJiNQY87R4=; b=bpjiLKyfxH/BLjzCVEKbqeIBTN
	zfgPVovXiv99uW730EPJNOps2lRP8B8JjNHohGkjZiepkGGdyEkOgqnqAZbBFImCa+AQFkbXZiQvI
	cvEeZcXLsPtue9W1b6rkXw5BZqkzRiCPmWMJlWMiAz+DIBaGxkx4DPYBrACcjDL+ST7uZOuoRJ9k7
	CDgJ77WR2oZsaSF7mr3Del7bbQnkHGdABYiWsGnJQughhHfMSRyPPO3jI/PvBc6+UVN2UYYleVIX4
	aYPYJU/wdP56mez0K4BBj8YjH9ciKEkmH04A0uoxAxo+RgmwwGZxx1Ij+Rhtt4i9pOyyq95mSFfYD
	SBBwHF7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNkSq-0002Yf-6a; Sun, 12 Apr 2020 21:48:28 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNkSh-0002YH-Le
 for openwrt-devel@lists.openwrt.org; Sun, 12 Apr 2020 21:48:21 +0000
Received: by mail-il1-x142.google.com with SMTP id i2so6127957ils.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 Apr 2020 14:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=csuoH6GkuvCDt1LXOV4qnZqMtd+RmQXKfyrEkHXJGCg=;
 b=fsFWyl/cRQakCHJpkVovL3vEQJbkSWhBStPfn7FJlOEqWs3GmNO5kE2ZZZgkS8Xllb
 EyOu7Y+VxTQw2Z/TXr8+5mA//GhzPWdvE+wifFsjESsPQdCjGR6UEaAsRT/3YnLkrMX2
 x/8VdjnnTGF4O0EaqThdHl5rQHr0BMnrPOc0vPQ2FXNOZ0E5Wc5/yULhy1ymdiWJ6fXB
 bHlDFcYCKEWQhPiTJc+RyLdMhW2APaP7duobyvQeaVSYz5sD1OySyApy0cXTEE3tirCG
 Sj3b9hPMFvwy1fScgN2IYpDUKLvk6EIZSQxi963ljWVI/cbftyQsgQ+aGzN66SnlRU5O
 Mx/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=csuoH6GkuvCDt1LXOV4qnZqMtd+RmQXKfyrEkHXJGCg=;
 b=GT7+VlTKlOiFSvuQSmloVXmImjk1s1OfEGLjyGHd3GzgmRxawZVn6SLYk3cHBjSY4Z
 X/QKY0cqN9mh3DTmP4uxhnK/AsR/hSBPlJhVQKSj5iTGWh4P2S2uXdBYEccHm7h+w+aa
 XxZhhEdNEsE+Dc0t4FRmgZCEC5AOFXcg8bzbpeGCKFk/qDQ8eIsbIXH5LlThoOwDKArg
 jvs3XszbVcGUsN9FD2DibnFMf0clTzf6POEnf5AAYfPRjuO3uuZKmaBalSzbCYeMAF1J
 8dxCzwYGopI2zH4kcstdPX6KzAsxNqFutgo4bGh3n/yA2SHZYlvILa4x5cz2/VgQakf8
 9GbQ==
X-Gm-Message-State: AGi0PuYunGH86QEe9mFMhiQf6VFf9wUVS+VMwWu0s9rNNxy+wdE5/I1s
 F8BsWLKVsNO1QkpmApeFRhV9+RULmY2TOe0VJT0sciMUlr4=
X-Google-Smtp-Source: APiQypLIr14F8ovdO1xwQLYmpl/gCDuLeqB+pgffTp/slsUnrCUh9rAJcnjutmXcgfs8vqpP8P3ilop3VArGQ9FyUa0=
X-Received: by 2002:a92:ce06:: with SMTP id b6mr8606154ilo.235.1586728096695; 
 Sun, 12 Apr 2020 14:48:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAOdf3gpDVBzWe=2qHz12XhtbsmXrJNpd_nW9k9Gix1mHtzNe0g@mail.gmail.com>
In-Reply-To: <CAOdf3gpDVBzWe=2qHz12XhtbsmXrJNpd_nW9k9Gix1mHtzNe0g@mail.gmail.com>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sun, 12 Apr 2020 17:48:05 -0400
Message-ID: <CAOdf3godVY98XsBvacb73pJoJf6tEn-myQ3AqhZo=yH-mQ2rHg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_144819_731800_47D9865F 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] MT7621 and bridge firewalling
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TGUgc2FtLiAxMSBhdnIuIDIwMjAgw6AgMTI6NDgsIEV0aWVubmUgQ2hhbXBldGllcgo8Y2hhbXBl
dGllci5ldGllbm5lQGdtYWlsLmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGVsbG8gT3BlbldydCBoYWNr
ZXJzLAo+Cj4gSSdtIHBsYXlpbmcgYXJvdW5kIHdpdGggT3BlbldydCBtYXN0ZXIgb24gYSBNaWty
b1RpayBSQjc1MEdyMyBhbmQKPiB3b3VsZCBsaWtlIHRvIGRvIGhhcmR3YXJlIGFjY2VsZXJhdGVk
IHN0YXRlZnVsbCBicmlkZ2UgZmlyZXdhbGxpbmcuIE15Cj4gZW5kIGdvYWwgaXMgdG8gbGVhcm4g
YW5kIG1ha2UgUGhhblRhcAo+IChodHRwczovL2dpdGh1Yi5jb20vbmNjZ3JvdXAvcGhhbnRhcCkg
d29yayBhdCBsaW5lIHJhdGUuCj4KPiBNVDc2MjEgc3VwcG9ydHMgZmxvdyBvZmZsb2FkLCBzbyB0
aGUgaGlnaCBsZXZlbCBpZGVhIHdvdWxkIGJlIHRvOgo+IC0gY3JlYXRlIGEgbGludXggYnJpZGdl
IHdpdGggMiBwb3J0cyAoc2F5IGxhbjQvbGFuNSkKPiAtIGRpc2FibGUgbm9ybWFsIHN3aXRjaCBv
ZmZsb2FkIChkbyBub3QgZm9yd2FyZCBqdXN0IGJhc2VkIG9uIG1hYwo+IGRlc3QpIGFuZCBoYXZl
IHRoZSBwYWNrZXRzIGdvIHRocm91Z2ggbmV0ZmlsdGVyCj4gLSBoYXZlIG5ldGZpbHRlciBjcmVh
dGUvaW5zdGFsbCBmbG93IG9mZmxvYWQgcnVsZXMgZm9yIG1vc3QKPiBjb25uZWN0aW9ucyBsaWtl
IHdlIGRvIGZvciB0aGUgcm91dGluZyBjYXNlLgo+IC0gZW5qb3kKPgo+IE15IHF1ZXN0aW9ucyBh
cmU6Cj4gLSB3aWxsIHRoZSBoYXJkd2FyZSBsZXQgbWUgZG8gdGhhdCAoYW55IHJlc3RyaWN0aW9u
cyBvbiB0aGUgZmxvdwo+IG9mZmxvYWQgcnVsZXMgb3IgLi4uKSA/Cj4gLSBpcyBpdCBhbHJlYWR5
IHBvc3NpYmxlIHdpdGggT3BlbldydCBtYXN0ZXIgKEkgd2FzIG5vdCBhYmxlIHRvIGhhdmUgYQo+
IGJyaWRnZSB3aXRob3V0IG9mZmxvYWQgeWV0KSA/Cj4gLSBhbnkgcG9pbnRlciB0byBvbmdvaW5n
IHdvcmsgaW4gdGhhdCBhcmVhICh3aGlsZSB3cml0aW5nIHRoaXMgZW1haWwgSQo+IGp1c3QgZm91
bmQgTkZfQ09OTlRSQUNLX0JSSURHRSkKCkkgc3BlbnQgcGFydCBvZiB0aGUgZGF5IHJhbmRvbWx5
IHBhdGNoaW5nIG91dCBzb21lIHBhcnQgb2YgdGhlIGtlcm5lbCwgZXhhbXBsZToKCi0tLSBhL2Ry
aXZlcnMvbmV0L2RzYS9tdDc1MzAuYworKysgYi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMKQEAg
LTE2NTgsMTUgKzE2NTgsMTUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkc2Ffc3dpdGNoX29wcyBt
dDc1MwogICAgIC5wb3J0X2VuYWJsZSAgICAgICAgPSBtdDc1MzBfcG9ydF9lbmFibGUsCiAgICAg
LnBvcnRfZGlzYWJsZSAgICAgICAgPSBtdDc1MzBfcG9ydF9kaXNhYmxlLAogICAgIC5wb3J0X3N0
cF9zdGF0ZV9zZXQgICAgPSBtdDc1MzBfc3RwX3N0YXRlX3NldCwKLSAgICAucG9ydF9icmlkZ2Vf
am9pbiAgICA9IG10NzUzMF9wb3J0X2JyaWRnZV9qb2luLAotICAgIC5wb3J0X2JyaWRnZV9sZWF2
ZSAgICA9IG10NzUzMF9wb3J0X2JyaWRnZV9sZWF2ZSwKLSAgICAucG9ydF9mZGJfYWRkICAgICAg
ICA9IG10NzUzMF9wb3J0X2ZkYl9hZGQsCi0gICAgLnBvcnRfZmRiX2RlbCAgICAgICAgPSBtdDc1
MzBfcG9ydF9mZGJfZGVsLAorICAgIC8vLnBvcnRfYnJpZGdlX2pvaW4gICAgPSBtdDc1MzBfcG9y
dF9icmlkZ2Vfam9pbiwKKyAgICAvLy5wb3J0X2JyaWRnZV9sZWF2ZSAgICA9IG10NzUzMF9wb3J0
X2JyaWRnZV9sZWF2ZSwKKyAgICAvLy5wb3J0X2ZkYl9hZGQgICAgICAgID0gbXQ3NTMwX3BvcnRf
ZmRiX2FkZCwKKyAgICAvLy5wb3J0X2ZkYl9kZWwgICAgICAgID0gbXQ3NTMwX3BvcnRfZmRiX2Rl
bCwKICAgICAucG9ydF9mZGJfZHVtcCAgICAgICAgPSBtdDc1MzBfcG9ydF9mZGJfZHVtcCwKLSAg
ICAucG9ydF92bGFuX2ZpbHRlcmluZyAgICA9IG10NzUzMF9wb3J0X3ZsYW5fZmlsdGVyaW5nLAot
ICAgIC5wb3J0X3ZsYW5fcHJlcGFyZSAgICA9IG10NzUzMF9wb3J0X3ZsYW5fcHJlcGFyZSwKLSAg
ICAucG9ydF92bGFuX2FkZCAgICAgICAgPSBtdDc1MzBfcG9ydF92bGFuX2FkZCwKLSAgICAucG9y
dF92bGFuX2RlbCAgICAgICAgPSBtdDc1MzBfcG9ydF92bGFuX2RlbCwKKyAgICAvLy5wb3J0X3Zs
YW5fZmlsdGVyaW5nICAgID0gbXQ3NTMwX3BvcnRfdmxhbl9maWx0ZXJpbmcsCisgICAgLy8ucG9y
dF92bGFuX3ByZXBhcmUgICAgPSBtdDc1MzBfcG9ydF92bGFuX3ByZXBhcmUsCisgICAgLy8ucG9y
dF92bGFuX2FkZCAgICAgICAgPSBtdDc1MzBfcG9ydF92bGFuX2FkZCwKKyAgICAvLy5wb3J0X3Zs
YW5fZGVsICAgICAgICA9IG10NzUzMF9wb3J0X3ZsYW5fZGVsLAogICAgIC5wb3J0X21pcnJvcl9h
ZGQgICAgPSBtdDc1MzBfcG9ydF9taXJyb3JfYWRkLAogICAgIC5wb3J0X21pcnJvcl9kZWwgICAg
PSBtdDc1MzBfcG9ydF9taXJyb3JfZGVsLAogICAgIC5waHlsaW5rX3ZhbGlkYXRlICAgID0gbXQ3
NTMwX3BoeWxpbmtfdmFsaWRhdGUsCgpJIHdhcyBvbmx5IGFibGUgdG8gYnJlYWsgdW5pY2FzdCB0
cmFmZmljIDooCkwyIGJyb2FkY2FzdCB3b3JrcyBmaW5lIGJ1dCBJIGRvbid0IHNlZSB1bmljYXN0
IHJlc3BvbnNlcyBpZiB0aGUgZHN0Ck1BQyBpcyBub3QgdGhlIG9uZSBvZiB0aGUgc3dpdGNoCkFz
IGEgZmlyc3Qgc3RlcCBJIGp1c3Qgd2FudCBhbGwgdHJhZmZpYyBvZiBsYW5YIHRvIGdvIHRvIHRo
ZSBzb2Z0d2FyZQpicmlkZ2UsIGJ1dCBubyBsdWNrIHNvIGZhcgoKPgo+IFRoYW5rcwo+IEV0aWVu
bmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
