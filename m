Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314691F9B7F
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 17:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ibnx32+I5ww7r14rcwEVQvcvdxKpUnO2V90MLavQ1Dk=; b=RFE
	w/9cSH4/AldbRtgfihHVbceBz2BlAnW+nj/BYYUjzeDHKMHzMmf/IoH++woXNFPEf8NnA64oVze7T
	sNeTzyOad6VfFziNF07IXNOYfcX42VcQ2wnZCC2rQWXtwaSDG6ve1fs5posfQUSAml+OtBEH3NPFK
	NioaD9x7oma5Z5go9W1idV2Jc1GoFtl6iMWasYiVu078XFIkl5O05m4wZ+q9ldziObrENAYsRb3g8
	sCZrqorw+hJsseUI0IJ7i4GyYrXXmU7oL5fIk6ZwM+PwcK68n8LZhegQ3aSUMgIrbZKBvRF/QL0Db
	UGw2ExECjfbjG6D/EofXGl9qY7A5dcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqiN-0003Cp-Jy; Mon, 15 Jun 2020 15:07:59 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqiF-0003CR-1k
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 15:07:52 +0000
Received: by mail-io1-xd44.google.com with SMTP id r77so18216392ior.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 08:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:cc
 :content-transfer-encoding;
 bh=TND/dkea/6B9c9Cz6xz/9sL6lwru28iRvx8kNBu287o=;
 b=BIIjF19C6w1C4BVr8SijJj9tYcEwWz8+ypc5pI4gBS9svNlxIaPzttvlB8Jh8Iluqs
 2WppIXrLy2mYTpeRShwV57KBHcY+l1rSwjBmcnJvs2Bc+usIwcHVlacSAmVykLVZPggZ
 V/7yzEE+nFZ4h99EmxLFkr3clD2H/426KWzM8Tq3g+G+plLE2c3pv5vwmkQTFGzjuIia
 YteXbK7kgXN/bYi/lnibvBjtbrNTM79AY5Wnu5a5zA/tEwhNrY4bbvw6TqkK94AuNRWQ
 SWrEMxYf7B6Cem02mic+2I40l5qrG2vRIOdEDCL7orREfe3Lw7Ey586wHo65cU68CHXY
 l9Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:cc
 :content-transfer-encoding;
 bh=TND/dkea/6B9c9Cz6xz/9sL6lwru28iRvx8kNBu287o=;
 b=RoN9agjaBwoQTbXglrOa0pTXiRLb0Z3dxydiTgZXjbwJWXNbO6Q66aRun9pRDzV46u
 gjeanP6n79pvPzMpr4257bP1bpeVze98uJdyKFHcemKS03lPCiHi26sxmdU7HyuzE+eS
 8sIB/eqrJx1EC0VsUCNSQwwJo87U15lliD2eIfJyWjM1HVXpKdTdB6olfhbXu6EakKIk
 EvGWUKRYbLcBUfClT7eE9QqUrXENvZt4KwAzFbXxsJGcfRwm9/ehx+MzMuxaRjzpWsm0
 z1HC27GGJyrDxc4xwdlMVWkXqtsAB7V53t01r/DehrE9YL+mX2AYFRr3qa0g2ca7m47p
 SFeQ==
X-Gm-Message-State: AOAM533+OerZg7DY15chrhxeKvX0d+yrObRpifg+hF3kfHHy4pEyY1gb
 yypRANGpTV9KYJw56pLct+T+3vAX1YH7jkZVSA==
X-Received: by 2002:a6b:5a07:: with SMTP id o7mt28668312iob.67.1592233670017; 
 Mon, 15 Jun 2020 08:07:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6e02:5ab:0:0:0:0 with HTTP; Mon, 15 Jun 2020 08:07:49
 -0700 (PDT)
From: Magdalena Weidner <magdalenaweidner8@gmail.com>
Date: Mon, 15 Jun 2020 16:07:49 +0100
Message-ID: <CAG4vnMq1OnY0g515mWwioxd22gUn0MtFLjSeLf-RozJRXOr=xg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_080751_096873_06CC21ED 
X-CRM114-Status: UNSURE (   1.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [magdalenaweidner8[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [magdalenaweidner8[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: [OpenWrt-Devel] =?utf-8?q?Ben=C3=B6tigen_Sie_einen_Kredit_zwisch?=
 =?utf-8?q?en_Privatpersonen=3F?=
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
Cc: hauke.doerk-bendig@ipp.mpg.de, Hauke@gmail.com, hauke.smidt@wur.nl,
 openwrt-devel@lists.openwrt.org, anak.indraningrat@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TWl0IEtyZWRpdCAgb2huZSBCYW5rIGhhYmVuIFNpZSBlaW5lIGFuZGVyZSBNw7ZnbGljaGtlaXQg
enUgbGVpaGVuLApvaG5lIGR1cmNoIGRpZSBCYW5rZW4gZ2VoZW4genUgbcO8c3Nlbiwgd28gU2ll
IG5hY2ggYmVzdGltbXRlbgpLcml0ZXJpZW4gYXVzZ2V3w6RobHQgd2VyZGVuLCBkaWUgdW50ZXIg
YW5kZXJlbSBJaHJlIGZhbWlsacOkcmUgdW5kCmZpbmFuemllbGxlIFNpdHVhdGlvbiBiZXRyZWZm
ZW4uIFdlbm4gU2llIGJlaXNwaWVsc3dlaXNlIGluIGVpbmVtCnRlbXBvcsOkcmVuIEdlc2Now6Rm
dCBhcmJlaXRlbiwga8O2bm5lbiBTaWUgaW1tZXIgbm9jaCBLcmVkaXRlIGF1Zm5laG1lbiwKZGEg
U2llIGtlaW5lIEJlbGVnZSB3aWUgZGllIGxldHp0ZW4gR2VoYWx0c2FicmVjaG51bmdlbiwgZGll
IGVpbmVuCnN0YWJpbGVuIEFyYmVpdHNwbGF0eiBiZXNjaGVpbmlnZW4sIGJlbsO2dGlnZW4uIEVp
biBLcmVkaXQgb2huZSBCYW5rCmlzdCBhdWNoIGRpZSBpZGVhbGUgTMO2c3VuZyBmw7xyIE1lbnNj
aGVuIGluIGVpbmVyIFNpdHVhdGlvbiB2b24KQmFua3ZlcmJvdGVuLCBkaWUgYWJlciBlaW5lbiBL
cmVkaXQgYXVmbmVobWVuIG3DvHNzZW4sIHVtIEFyYmVpdCB6dQplcmxlZGlnZW4sIEdlbGQgYXVm
enViYXVlbiwgSGF1c2hhbHRzZ2Vyw6R0ZSB6dSBrYXVmZW4gb2RlciBzb2dhciBlaW4KQXV0byB6
dSByZXBhcmllcmVuLCBkYXMgenVtIEJlaXNwaWVsIHp1ciBFeHBhbnNpb24gZGllbnQgZGVyCkpv
YnN1Y2hiZXJlaWNoIGbDvHIgQXJiZWl0c2xvc2UuCkbDvHIgZGVuIEtyZWRpdG5laG1lciBiaWV0
ZXQgZGVyIEtyZWRpdCB6d2lzY2hlbiBFaW56ZWxwZXJzb25lbiBkZW4KVm9ydGVpbCBlaW5lcyBp
bnRlcmVzc2FudGVuIFppbnNzYXR6ZXMsIG9obmUgZHVyY2ggdmVyc2NoaWVkZW5lCmFkbWluaXN0
cmF0aXZlIFNjaHJpdHRlIHp1IGdlaGVuLCB3YXMgZGVuIFByb3plc3MgYmVzY2hsZXVuaWd0LCB1
bSBkaWUKTWl0dGVsIHNjaG5lbGwgenUgZXJoYWx0ZW4uIERlciBLcmVkaXRnZWJlciBoYXQgc2Vp
bmVyc2VpdHMgZWluZQpkdXJjaHNjaG5pdHRsaWNoZSBSZW5kaXRlIHZvbiAzJSwgd2FzIG9mdCBk
ZW0gWmluc3NhdHogZW50c3ByaWNodCwgZGVyCmbDvHIgZGllc2UgQXJ0IHZvbiBWZXJmYWhyZW4g
ZWluZ2Vmw7xocnQgd3VyZGUgdW5kIGRlciB2aWVsIG5pZWRyaWdlcgppc3QgYWxzIGRlciB2b24g
ZGVuIEJhbmtlbiBtaXQgaWhyZW0gUHJvZHVrdCBhbmdlYm90ZW5lIFppbnNzYXR6LgpGw7xyIHdl
aXRlcmUgSW5mb3JtYXRpb25lbiB3ZW5kZW4gU2llIHNpY2ggYml0dGUgYW4gZWluZSBBZHJlc3Nl
OgoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEZJTkFOWklFUlVORyBB
VVRPCiAgICAgICAgICAgICAgICAgICAgICAgICBFLW1haWw6IGZpbmFuY2VtZW50YXV0bzUxQGdt
YWlsLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
