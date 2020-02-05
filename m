Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8281528F0
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 11:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=byWKeE1eEekLFmzmyPTy2pZCk4QvyHNOiWKa9tfXU+o=; b=ZyW
	uNM8lRQp8xdOBbX/2gwLyYNWG/+4puYtsJ6lDDw5pMxtNNC1tclOrpOPZfMryovIHIeq+pl+s4tgy
	XS4G902XvNZnrORPRz8lb11/ycB7CJYb8fzepv15PgpBpbpP3stC6IAz/CdHH1TKtsGujEexrV9VY
	rtftmRt+PBOQJ0/4oWMGTfqKhYv0VteisVyLOye1ny5ZTx/zb1I3Z+LMqOktcYVEUIY03VzBKX6ZF
	Fqt9zbOFHuvJhb5g2KLxy3Tgcp7CxVVepqVIao/z7xwyvUDIjbPsgVkgRZp1nwA0kYfIBK3WlFWef
	1AP4Rpt6PtTF/pTpjOBRP2kb6xkqdKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izHiD-00047m-0K; Wed, 05 Feb 2020 10:15:13 +0000
Received: from mail-yw1-xc30.google.com ([2607:f8b0:4864:20::c30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izHhx-00047E-6p
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 10:14:58 +0000
Received: by mail-yw1-xc30.google.com with SMTP id 10so1880251ywv.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 02:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=rfhFRurcVAM2jVK264t7vxIkSVElN6XnRADqkcnnE70=;
 b=Zw9enGOn99rbofooY7JsStaJCSgG/Yvd5ymBR/LJeISL18TUV9EB938HZx83+fZtzb
 NcsarKwt0ju/YdZFmAqYdEBDgIjuKWwfGW3igiU7+/u0YW4IoVoKLbbwPir2ys7iz6XC
 xazoC8ZjLa8qFFMICfXox+o7z3slLnzeJKEWWI+02VX5qrFf8xXudtOkQO6hpS9kBeWk
 dfqmwiOSIiBEOLdivSl7RiKhTAmVcg2Iy0wu7g7V5aq27jzQEAvNtYcHhKDSgSHsOmA1
 8809nH6IlkkyV/Kspu2oCrI5k2m6iWvk48raEgVugd7N0uMGsY/6sXNpXQZoA7iB0inz
 hyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=rfhFRurcVAM2jVK264t7vxIkSVElN6XnRADqkcnnE70=;
 b=T2uC8LzNXLRZcp+19o6Eu+nlzsJB/GbWmlTPZTYwO0EubkBpR0C/CW1AAYACFRbHlr
 PFIdU82L2QR2j87NzVZT6+Il+AxoHsrZxtF5q3SEG6g3bqs1c36UmKH12Ym/l/rLdS22
 IfhfIwFIoDM7UxxeVbxvNaR+yh2mFobLiowsvoxNgF1oOM0HEBD4nKzOxwyHBINIKFu/
 CenBNSZi2VKYinuxoqQm/80lyhjnpyVfZbquDiFuGb7R0J+GXwQp/8A8ZdjfEMVoEmo2
 O1q7a5H6LLjvRA4TiSKXXY9qLtSEVVMSrKVmLXh4nBfA43AXHuH0aqhf+25H3JEnDYZ4
 DUrg==
X-Gm-Message-State: APjAAAVBe1kKaPWwzmx+AemaKXLl7pRUSNWxUMHSJR2OLkL6LjMrQh3e
 l8G9q6odBwyRKsyq+o+asnjI8jQI/Py56Row7Y1Sm6a1
X-Google-Smtp-Source: APXvYqwa+Z7irxC9bUEKlX2yqEe/H/EmD3+SmWvXUluDmzFTY3BdJrKeffiv8wk2APiZNvrW8I0vY/EUBlPCzYOrF/Q=
X-Received: by 2002:a81:f00e:: with SMTP id p14mr327250ywm.263.1580897695716; 
 Wed, 05 Feb 2020 02:14:55 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 5 Feb 2020 11:14:44 +0100
Message-ID: <CACna6rzSoJmDadcXO5zwrjo2Xzrw-quL1edE9bqO_Whq6nSPmQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_021457_273988_2F6A4DD4 
X-CRM114-Status: UNSURE (   5.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c30 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Wireless monitor interface causes device to run out
 of memory
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

SSBub3RpY2VkIHRoYXQgbXkgYmNtNTN4eCBkZXZpY2VzIHJ1biBvdXQgb2YgbWVtb3J5IGFmdGVy
IHJ1bm5pbmcKd2lyZWxlc3MgbW9uaXRvciBpbnRlcmZhY2UgZm9yIGFib3V0IDIgZGF5cy4KClRo
aXMgcHJvYmxlbSBvY2N1cnMgc2luY2UgMDY5NGQwOGM4NGZkICgiYmNtNTN4eDogc3dpdGNoIHRv
IGtlcm5lbAo0LjkiKSB3aGljaCBidW1wZWQga2VybmVsIGZyb20gNC40LjUzIHRvIDQuOS4xNCBh
bmQgaXMgc3RpbGwgcHJlc2VudAp3aGVuIHVzaW5nIDQuMTQuCgpJbnRlcmVzdGluZ2x5IHRoaXMg
bWVtb3J5IGRyYWluIHJlcXVpcmVzIGF0IGxlYXN0IG9uZSBvZjoKbmV0LmlwdjYuY29uZi5kZWZh
dWx0LmZvcndhcmRpbmc9MQpuZXQuaXB2Ni5jb25mLmFsbC5mb3J3YXJkaW5nPTEKdG8gYmUgc2V0
LiBPcGVuV3J0IGhhcHBlbnMgdG8gdXNlIGJvdGggYnkgZGVmYXVsdC4KClRoaXMgaXMgKm5vdCog
YSBtZW1vcnkgbGVhay4gUmVzdGFydGluZyB3aXJlbGVzcyBpbnRlcmZhY2VzIGZyZWVzIGFsbApj
b25zdW1lZCBtZW1vcnkuCgpBbnkgaWRlYSB3aGF0IG1heSBiZSBjYXVzaW5nIHRoaXM/CgotLSAK
UmFmYcWCCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
