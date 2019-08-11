Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523EC89104
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 11:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jt1oVNvSv2KeEpFdyXIGY6IbC0bd7Mu4dEax5J8rVu8=; b=WhftuXWY9KC/3VMaUF/PQ5JL/
	JFq9QDzgAl+J/OsdykqRWIipZRqsd6tLrnmJvDXTzhOJuCfXhelP9AKAtf5GiNqSLvPj/ZjoP5Do1
	fWvdltKw9mIpIbustG2vNyuD4i40l/CC2EWqgZdadLyeIDqKV5pSDVIBKvV0U6x6MA0qYNmqZsxTp
	bzsOWtJw7sTyiLzRZsdk3M1licnuo/iXvzLsaNp0giRhrSHqkfCbpPLquvWJ6oTX/ikynv2u5fo5P
	DNAwZAjzGUpiSUazSAUV75Q15PcmeFVvbqEDnsbwaq2ws+fskZDGSNgF5IO1FHPWFp2oggl0MfEDU
	Daiy8Aaig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwjxq-0003Bk-Us; Sun, 11 Aug 2019 09:16:35 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwjxY-0003BQ-G2
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 09:16:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id p17so101990359wrf.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 11 Aug 2019 02:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Erf9Uy6LwZDY4vlJt5zO2bED/Ndey3fueM3YXx3BhCw=;
 b=PzGxehhMrXRcRJNJgfm0l+FZu5G4PFY/Hfc42YUFw+/6zF1yRKEVRQBVOJsUzKknOi
 tJdz+tRi+vXkHexDXAHXYl01QeEbWE8I+DTeoUfCWIDdY/RpN5iQcZp6f70ySf2sj2Fx
 8n7d1NAErfVsBZkSBHJ8VvJlq7saHa02jMtSO6lpqJqQVj75YnjxlOwWGHCLrMrrgrlo
 upQkiGfWoQCtRFTD0jMg/Gqwm2wzgBxaq/8xlBZzKOA9ibsqc3zW59KWTM5o4T3ZHYjv
 Ro4hNlYLrEvUfUnPDNyE+q69UsMw4t/xeURZPSqu9U1p2LnKybK4Z/aLYSEfjLGBqQ39
 N7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Erf9Uy6LwZDY4vlJt5zO2bED/Ndey3fueM3YXx3BhCw=;
 b=ch8OGLNRzVbn4pcPVNRGyQfUeCL4qTQfv6UhTP9+q4nHG+e2e4/lYcCoOPi8G+Qofz
 4p842E38iZ2wX1mGCFupT9paCLD2ZLB7uWEk0ds3SWYHXKBm4q/FcGouwaxxDS3cj7Nl
 PpFajnJgymto423d31fhQdYTKyotmG11dVpbZ0u6BML4IQS0h8OKN2flhxJsvDBmcjbM
 asWAD2BQr17iK6Z9LMIOfVm8R8B4auw357uL7KxLq0AQsto4RwHLMCwcONFbZOKKEOr4
 +Q0cKuWjgKTjEVbh15FbsVrysP2K2YEVM766V5/YLq+RZx29Yr5JdBiA6yOv/8TejulF
 I76A==
X-Gm-Message-State: APjAAAVgdABUodCFPZHq21Y4z464yYom/oi7nvRj2v9R6bhzk2GmsHtr
 gDJl3iSVual+90LHTboVGMq4A6aPvY0=
X-Google-Smtp-Source: APXvYqyScGXbF7owcOW2ud1AnMXFCKUIfVofR5zy7/2xMrqCFlegMJtpcTjl2p1C4hCABFRuHPGvWw==
X-Received: by 2002:adf:dd88:: with SMTP id x8mr25726987wrl.331.1565514973835; 
 Sun, 11 Aug 2019 02:16:13 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f18:2300:b015:2ed8:4bbb:9f7?
 (p200300EC2F182300B0152ED84BBB09F7.dip0.t-ipconnect.de.
 [2003:ec:2f18:2300:b015:2ed8:4bbb:9f7])
 by smtp.gmail.com with ESMTPSA id k124sm17305268wmk.47.2019.08.11.02.16.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 02:16:13 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20190810095809.GA745@meh.true.cz>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <dbd7bd2a-fcf4-0754-ff02-94366cc0854f@kresin.me>
Date: Sun, 11 Aug 2019 11:16:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190810095809.GA745@meh.true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_021616_600572_70878E84 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Review and cleanup of base packages
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

SGV5IFBldHIsCgpmaW5kIHNvbWUgY29tbWVudHMgaW5saW5lLgoKMTAvMDgvMjAxOSAxMTo1OCwg
UGV0ciDFoHRldGlhcjoKPiBIaSwKPiAKPiBvbmUgb2YgdGhlIHRvcGljcyBkaXNjdXNzZWQgZHVy
aW5nIHJlY2VudCBIYW1idXJnIG1lZXRpbmcgd2FzICJSZXZpZXcgYmFzZQo+IHBhY2thZ2VzIlsx
XSwgd2hlcmUgd2Ugc2ltcGx5IHRhbGtlZCBhYm91dDoKPiAKPiAgICogbGFjayBvZiBmb3JtYWwg
ZGVmaW5pdGlvbiBmb3IgYSBiYXNlIHBhY2thZ2UKPiAgICogdHJhbnNmZXIgb2YgYmFzZSBwYWNr
YWdlcyB3aGljaCBkb24ndCBmaXQgZm9ybWFsIGRlZmluaXRpb24gaW50byBmZWVkcwo+IAo+IFNv
LCBob3cgY2FuIHdlIGRlZmluZSB3aGljaCBwYWNrYWdlIHNob3VsZCBiZSBpbmNsdWRlZCBpbiB0
aGUgYmFzZS9tYXN0ZXIKPiB0cmVlPyAoQW55IGlkZWEgd2hlcmUgdG8gcHV0IHRoaXMgb24gdGhl
IHdpa2k/KQo+IAo+ICAgKiBwYWNrYWdlIGlzIG5lZWRlZCBieSBkZXZpY2UgaW4gb3JkZXIgdG8K
PiAgICAgLSBidWlsZCB0aGUgaW1hZ2UgYW5kIGZsYXNoaW5nIHRvb2xzCj4gICAgIC0gYm9vdCBk
ZXZpY2UgaW50byB1c2FibGUgc3RhdGUKPiAgICogcGFja2FnZSBpcyBjb252ZW5pZW50IGZvciBk
ZXZlbG9wbWVudCAoZ2RiLCBwZXJmLCBzdHJhY2UsIHZhbGdyaW5kIGV0Yy4pCj4gICAgIC0gY291
bGRuJ3Qgb25lIGp1c3Qgc3ltbGluay9pbnN0YWxsIHRob3NlIHBhY2thZ2VzIGZyb20gZmVlZHM/
Cj4gICAqIGl0J3MgY29udmVuaWVudCBmb3IgdGVzdGluZyAoY3QtYnVnY2hlY2ssIGZidGVzdCwg
c3BpZGV2X3Rlc3QsIGlwZXJmMyBldGMuKQo+ICAgICAtIGNvdWxkbid0IG9uZSBqdXN0IHN5bWxp
bmsvaW5zdGFsbCB0aG9zZSBwYWNrYWdlcyBmcm9tIGZlZWRzPwo+ICAgKiBwYWNrYWdlIGlzIG5l
ZWRlZCBmb3IgYXV0b21hdGljIHRlc3RpbmcKPiAgICAgLSBjb3VsZG4ndCBvbmUganVzdCBzeW1s
aW5rL2luc3RhbGwgdGhvc2UgcGFja2FnZXMgZnJvbSBmZWVkcz8KPiAgICogaXQncyBub3QgcG9z
c2libGUgdG8gYnVpbGQgdGhlIHBhY2thZ2UgYW5kL29yIHRvb2xpbmcgb3V0IG9mIHRoZSB0cmVl
Cj4gCj4gRm9yIHRoZSBpbml0aWFsIGRpc2N1c3Npb24sIEkndmUgc2ltcGx5IGNyZWF0ZWQgYSBs
aXN0IG9mIHBhY2thZ2VzIHdoaWNoIGFyZQo+IG5vdCB1c2VkIGJ5IGFueSB0YXJnZXQsIHNvIHBy
b2JhYmx5IHBvc3NpYmxlIGNhbmRpZGF0ZXMgZm9yIHRyYW5zZmVyIGludG8gdGhlCj4gZmVlZHM6
Cj4gCj4gICBib290L2tleGVjLXRvb2xzCj4gICBkZXZlbC9nZGIKPiAgIGRldmVsL3BlcmYKPiAg
IGRldmVsL3N0cmFjZQo+ICAgZGV2ZWwvdHJhY2UtY21kCj4gICBkZXZlbC92YWxncmluZAo+ICAg
ZmlybXdhcmUvYW0zM3gtY20zCj4gICBmaXJtd2FyZS9hbWQ2NC1taWNyb2NvZGUKPiAgIGtlcm5l
bC9hdmlsYS13ZHQKPiAgIGtlcm5lbC9ncGlvLW5jdDUxMDRkCj4gICBrZXJuZWwvbGVkcy1hcHUy
L3NyYwo+ICAga2VybmVsL3J0Yy1ydjVjMzg2YQo+ICAga2VybmVsL3J0bDg4MTJhdS1jdAo+ICAg
a2VybmVsL3RyZWxheQo+ICAga2VybmVsL3cxLWdwaW8tY3VzdG9tCj4gICBsaWJzL2xpYmJzZCAg
ICAgICAgICAgICAgICAgICAgICAgKGxsZHBkKQo+ICAgbGlicy9saWJjb25maWcKPiAgIGxpYnMv
bGliZXZlbnQyICAgICAgICAgICAgICAgICAgICAobGxkcGQpCj4gICBsaWJzL2xpYm5ldGZpbHRl
ci1jdGhlbHBlcgo+ICAgbGlicy9saWJuZXRmaWx0ZXItY3R0aW1lb3V0Cj4gICBsaWJzL2xpYm5l
dGZpbHRlci1sb2cKPiAgIGxpYnMvbGlibmV0ZmlsdGVyLXF1ZXVlCj4gICBsaWJzL2xpYnJveG1s
Cj4gICBsaWJzL2xpYnVzYi1jb21wYXQKPiAgIGxpYnMvbmdodHRwMiAgICAgICAgICAgICAgICAg
ICAgICAoY3VybCkKPiAgIGxpYnMvcG9wdAo+ICAgbmV0d29yay9jb25maWcvbHRxLXZkc2wtYXBw
CgpBdCBsZWFzdCB0aGlzIG9uZSBpcyByZWZlcmVuY2VkIGluIHRhcmdldC9saW51eC9sYW50aXEv
eHJ4MjAwL3RhcmdldC5tawoKPiAgIG5ldHdvcmsvY29uZmlnL3Fvcy1zY3JpcHRzCj4gICBuZXR3
b3JrL2NvbmZpZy92dGkKPiAgIG5ldHdvcmsvY29uZmlnL3Z4bGFuCj4gICBuZXR3b3JrL2NvbmZp
Zy94ZnJtCj4gICBuZXR3b3JrL2lwdjYvNDY0eGxhdAo+ICAgbmV0d29yay9pcHY2LzZpbjQKPiAg
IG5ldHdvcmsvaXB2Ni82cmQKPiAgIG5ldHdvcmsvaXB2Ni82dG80Cj4gICBuZXR3b3JrL2lwdjYv
ZHMtbGl0ZQo+ICAgbmV0d29yay9pcHY2L21hcAo+ICAgbmV0d29yay9pcHY2L3RoYy1pcHY2Cj4g
ICBuZXR3b3JrL3NlcnZpY2VzL2lnbXBwcm94eQo+ICAgbmV0d29yay9zZXJ2aWNlcy9pcHNldC1k
bnMKPiAgIG5ldHdvcmsvc2VydmljZXMvbGxkcGQKPiAgIG5ldHdvcmsvc2VydmljZXMvb21jcHJv
eHkKPiAgIG5ldHdvcmsvc2VydmljZXMvb3BlbnZwbi1lYXN5LXJzYQo+ICAgbmV0d29yay9zZXJ2
aWNlcy9vcGVudnBuCj4gICBuZXR3b3JrL3NlcnZpY2VzL3JlbGF5ZAo+ICAgbmV0d29yay9zZXJ2
aWNlcy9zYW1iYTM2Cj4gICBuZXR3b3JrL3NlcnZpY2VzL3VtZG5zCj4gICBuZXR3b3JrL3NlcnZp
Y2VzL3dpcmVndWFyZAo+ICAgbmV0d29yay91dGlscy9jdXJsCj4gICBuZXR3b3JrL3V0aWxzL2Rh
bnRlCj4gICBuZXR3b3JrL3V0aWxzL2lmdG9wCj4gICBuZXR3b3JrL3V0aWxzL2lwZXJmMwo+ICAg
bmV0d29yay91dGlscy9pcGVyZgo+ICAgbmV0d29yay91dGlscy9pcHJvdXRlMgo+ICAgbmV0d29y
ay91dGlscy9pcHNldAo+ICAgbmV0d29yay91dGlscy9pcHV0aWxzCj4gICBuZXR3b3JrL3V0aWxz
L2l3Y2FwCj4gICBuZXR3b3JrL3V0aWxzL293aXBjYWxjCj4gICBuZXR3b3JrL3V0aWxzL3RjcGR1
bXAKPiAgIG5ldHdvcmsvdXRpbHMvdW1iaW0KPiAgIG5ldHdvcmsvdXRpbHMvd3Bhbi10b29scwoK
UGVyc29uYWxseSBJIHByZWZlciB0byBoYXZlIHNvbWUgZGVidWcgdG9vbHMgSSB1c2UgcmVndWxh
cmx5LCBsaWtlIAp0Y3BkdW1wLCBpZnRvcCBhbmQgaXBlcmYqLCBpbiB0aGUgYmFzZSBwYWNrYWdl
cy4gRHVyaW5nIGRldmVsb3BtZW50IEkgCmRvbid0IGluY2x1ZGUgdGhlIGZlZWRzLgoKUmF0aGVy
IEkgd291bGQgbGlrZSB0byBzZWUgdGhlIHRvb2wgImlvIiwgd2hpY2ggYWxsb3dzIG1lbW9yeS9y
ZWdpc3RlciAKbWFuaXB1bGF0aW9uLCBpbmNsdWRlZCBpbiB0aGUgYmFzZSBwYWNrYWdlcy4gUXVp
dGUgaGFuZHkgdG9vbCBkdXJpbmcgCmRyaXZlciBkZWJ1Z2dpbmcvZGV2ZWxvcG1lbnQuCgo+ICAg
c3lzdGVtL3JwY2QKPiAgIHN5c3RlbS96cmFtLXN3YXAKPiAgIHV0aWxzL2N0LWJ1Z2NoZWNrCj4g
ICB1dGlscy9mYnRlc3QKPiAgIHV0aWxzL2ZyaXR6LXRvb2xzCgpUaGUgZnJpdHotdG9vbHMgIm1l
dGEiIHBhY2thZ2UgcHJvdmlkZXMgdGhlIGZyaXR6LXRmZnMgcGFja2FnZSwgd2hpY2ggaXMgCmlu
Y2x1ZGVkIGF0IGxlYXN0IGJ5IHRhcmdldC9saW51eC9sYW50aXEvTWFrZWZpbGUuCgpSZWdhcmRz
Ck1hdGhpYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
