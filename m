Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ACF48857
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 18:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PP/lek5lcZmUweZOnHL2/VopPhfrrwFFU3cQQIYuxYI=; b=X2d+pX3MzVlBXE
	Hgtljj/nS+/a5thjQklHy6p2sXDTJzB/w7WzuYcDIXrmgynYeoIxV+jO/kvlg16tz4d8CgXqMq+J5
	HDNQFw2XeguD8xTt8/XWy07HN4/VfwCijhqZg9ySMs+yYCkdxeQdwP0WjAeBOxsQmutcf3S5Cs4j3
	iFP5X8k8SVTL5SWaLVGkQKWc1iEePpS33+OUaPaLZAGSciajJrlIhYPbaz2bkoHdI7EtrGkwgBZbf
	7AOqxbU0wlxkxII7EYaO+WYWy2YcViaAiMjgfGvV3PBK2L1G0LiYzSHCXZ4JA7sNCzXYt6qLJyz0c
	FEzgt/As8BS7KVoVO6DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu9j-0007wT-UM; Mon, 17 Jun 2019 16:06:51 +0000
Received: from linuxlounge.net ([88.198.164.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu9S-0007vE-AO
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 16:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=darmstadt.freifunk.net;
 s=mail; t=1560787589;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp:autocrypt:autocrypt;
 bh=bdAblgBXGjov2BDLXi70waLWkzcfm6YVECDYZpVFLMc=;
 b=KIfbiyVP70IYpiF1+PwRKIW7XRePPAn5PbWBQfvmumUMGqpdfmZ9/lrNAn3BNfdi2U8I3W
 qj2/3YvXdBSqpMNAXYEUbxNLitmmqRub5ZkVv9Hou4nasEqViyzh97/7uWW40xBJqI9yuz
 WwrmjvcK3deRB/3yEeh/XJbDA8XGFtLrsDl51buWYnJrdRrRdWhHIwIneypvHETGPKtAr2
 gm5iFoInwJSQw/zl3Tx5nhaXR2K0mshpk92LxlLgdr6KyMoPH7jdpiIKdKpxHCTrL4mFT6
 c50KKklMqGstHKrTQiVLOdHiTAGI7XZlXkgfJvGz4pCZtVGmcfeJCvfcMCQU6A==
To: openwrt-devel@lists.openwrt.org
References: <1545141554-27476-1-git-send-email-ynezz@true.cz>
From: Martin Weinelt <martin@darmstadt.freifunk.net>
Openpgp: preference=signencrypt
Autocrypt: addr=martin@darmstadt.freifunk.net; prefer-encrypt=mutual; keydata=
 mQENBEv1rfkBCADFlzzmynjVg8L5ok/ef2Jxz8D96PtEAP//3U612b4QbHXzHC6+C2qmFEL6
 5kG1U1a7PPsEaS/A6K9AUpDhT7y6tX1IxAkSkdIEmIgWC5Pu2df4+xyWXarJfqlBeJ82biot
 /qETntfo01wm0AtqfJzDh/BkUpQw0dbWBSnAF6LytoNEggIGnUGmzvCidrEEsTCO6YlHfKIH
 cpz7iwgVZi4Ajtsky8v8P8P7sX0se/ce1L+qX/qN7TnXpcdVSfZpMnArTPkrmlJT4inBLhKx
 UeDMQmHe+BQvATa21fhcqi3BPIMwIalzLqVSIvRmKY6oYdCbKLM2TZ5HmyJepusl2Gi3ABEB
 AAG0Lk1hcnRpbiBXZWluZWx0IDxtYXJ0aW5AZGFybXN0YWR0LmZyZWlmdW5rLm5ldD6JAVQE
 EwEKAD4CGyMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AWIQTu0BYCvL0ZbDi8mh+9SqBSj2Px
 fgUCW/RuGAUJEd/znAAKCRC9SqBSj2PxfpeZB/9VWUJDvzgAZnZqLNCvrcc6v8xqjVaaiVMd
 Hf5P6cOlwKekTgP5XpIS4cxc4wc+m2EG4Vq70+gcdTOBKXY+RpUVBMmbufVo47lgsDLkbQYp
 n4ZWh2VjJADiuEFX5Lk0Bo+dC8E5om9U71Qtq2WUloqZKdfagSmoo2u0F8SxX1OHZKmXiVfB
 Z57ypiQGzY9DfTcFwOXHvMUkOYGsUDn+RX0TlQR5hzvwfCQPoPtH3gulmSOEpF7cijhcqPDg
 Xtpocrssp2m6RwivIMKEc8gSPwGK31pfhEa5tI0nvMRnj4wuUMxbLVRoLxt5fVm/w9XZIcxJ
 Syhlmmd1/sl1PxFYu8W3uQENBEv1rfkBCADJX6bbb5LsXjdxDeFgqo+XRUvW0bzuS3SYNo0f
 uktM5WYMCX7TzoF556QU8A7C7bDUkT4THBUzfaA8ZKIuneYW2WN1OI0zRMpmWVeZcUQpXncW
 WKCgLBNYtk9CCukPE0OpDFnbR+GhGd1KF/YyemYnzwW2f1NOtHjwT3iuYnzzZNlWoZAR2CRS
 D02BYU87Mr2CMXrgG/pdRiaD+yBUG9RxCUkIWJQ5dcvgrsg81vOTj6OCp/47Xk/457O0pUFt
 ySKSjZkZN6S7YXl/t+8C9g7o3N58y/X95VVEw/G3KegUR2SwcLdok4HaxgOy5YHiC+qtGNZm
 DiQnNXN7WIN/oof7ABEBAAGJATwEGAEKACYCGwwWIQTu0BYCvL0ZbDi8mh+9SqBSj2PxfgUC
 W/RuGAUJEd/znwAKCRC9SqBSj2PxfpzMCACH55MVYTVykq+CWj1WMKHex9iFg7M9DkWQCF/Z
 l+0vQmyRMEMZnFW8GdX/Qgd4QbZMUTOGevGxFPTe4p0PPKqKEDXXXxTTHQETE/Hl0jJvyu+M
 gTxGE9/KrWmsmQC7ogTFCHf0vvVY3UjWChOqRE19Buk4eYpMbuU1dYefLNcD15o4hGDhohYn
 3SJrq9eaoO6rpnNIrNodeG+1vZYG1B2jpEdU4v354ziGcibt5835IONuVdvuZMFQJ4Pn2yyC
 +qJeekXwZ5f4JEt0lWD9YUxB2cU+xM9sbDcQ2b6+ypVFzMyfU0Q6LzYugAqajZ10gWKmeyji
 sgyqsv5UJTKaOB/t
Message-ID: <e1296643-8f13-19fd-41a4-a6eff0834ef8@darmstadt.freifunk.net>
Date: Mon, 17 Jun 2019 18:06:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
In-Reply-To: <1545141554-27476-1-git-send-email-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090634_794959_A1B093BE 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [88.198.164.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-nct5104d: Chill out unsupported
 device log spamming
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSdtIHNlZWluZyB0aGlzIG1lc3NhZ2UgYXMgd2VsbCBvbiBRRU1VIG9uIGFuIEFQVTJjNCBhbmQg
YWdyZWUgdGhhdAp0b25pbmcgaXQgZG93biB3b3VsZCBwcm9iYWJseSBiZSByZWFzb25hYmxlLgoK
IyBkbWVzZyB8IGdyZXAgLWMgJ2dwaW8tbmN0NTEwNGQ6IFVuc3VwcG9ydGVkIGRldmljZSAweGZm
ZmYnCjIxNgoKQmVzdCByZWdhcmRzCgpNYXJ0aW4KCk9uIDEyLzE4LzE4IDI6NTkgUE0sIFBldHIg
xaB0ZXRpYXIgd3JvdGU6Cj4gSSdtIGRvaW5nIHNvbWUgcXVpY2sgcnVuIHRpbWUgdGVzdHMgaW4g
UUVNVSwgd2hlcmUgSSdtIGFsd2F5cyBncmVldGVkCj4gd2l0aCBhIGJ1bmNoIG9mIHF1aXRlIHVz
ZWxlc3MgZXJyb3IgbWVzc2FnZXMsIHNvIGl0IHdvdWxkIGJlIG5pY2UgaWYgd2UKPiBjb3VsZCBy
ZWxheCB0aGVtIGxpdHRsZSBiaXQgYW5kIGRldmVsb3BlcnMgY291bGQgYWx3YXlzIGVuYWJsZSB0
aGVtIGlmCj4gbmVlZGVkIGFueXdheS4KPiAKPiAgJCBkbWVzZyB8IGdyZXAgLWMgJ2dwaW8tbmN0
NTEwNGQ6IFVuc3VwcG9ydGVkIGRldmljZSAweGZmZmYnCj4gICAgMjQ2Cj4gCj4gU2lnbmVkLW9m
Zi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiAtLS0KPiAgcGFja2FnZS9rZXJu
ZWwvZ3Bpby1uY3Q1MTA0ZC9zcmMvZ3Bpby1uY3Q1MTA0ZC5jIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9rZXJuZWwvZ3Bpby1uY3Q1MTA0ZC9zcmMvZ3Bpby1uY3Q1MTA0ZC5jIGIvcGFja2FnZS9r
ZXJuZWwvZ3Bpby1uY3Q1MTA0ZC9zcmMvZ3Bpby1uY3Q1MTA0ZC5jCj4gaW5kZXggOGRhNzU4MC4u
ZTI5ZDIyZiAxMDA2NDQKPiAtLS0gYS9wYWNrYWdlL2tlcm5lbC9ncGlvLW5jdDUxMDRkL3NyYy9n
cGlvLW5jdDUxMDRkLmMKPiArKysgYi9wYWNrYWdlL2tlcm5lbC9ncGlvLW5jdDUxMDRkL3NyYy9n
cGlvLW5jdDUxMDRkLmMKPiBAQCAtMzYxLDcgKzM2MSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IG5j
dDUxMDRkX2ZpbmQoaW50IGFkZHIsIHN0cnVjdCBuY3Q1MTA0ZF9zaW8gKnNpbykKPiAgCQlzdXBl
cmlvX291dGIoYWRkciwgU0lPX0dQSU9fRU5BQkxFLCBncGlvX2NmZyk7Cj4gIAkJYnJlYWs7Cj4g
IAlkZWZhdWx0Ogo+IC0JCXByX2luZm8oRFJWTkFNRSAiOiBVbnN1cHBvcnRlZCBkZXZpY2UgMHgl
MDR4XG4iLCBkZXZpZCk7Cj4gKwkJcHJfZGVidWcoRFJWTkFNRSAiOiBVbnN1cHBvcnRlZCBkZXZp
Y2UgMHglMDR4XG4iLCBkZXZpZCk7Cj4gIAkJZ290byBlcnI7Cj4gIAl9Cj4gIAlzaW8tPmFkZHIg
PSBhZGRyOwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
