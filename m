Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5F2135CF5
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Jan 2020 16:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b0iGnLQGRUOGa6qLqJnwsmH3rj391eoU+IZ0gpi9a8c=; b=rAx
	rOJcqizIs5ztD7IDkgfqSeSfLXH30m9Gk7pH+cEsnkT+jVlMy8meo5rS867Gxk41+AISuIbqu2w8Q
	Jkf92ZIcRSDVh4063fOIOorHVbWZNaanZMIWOZhiQZK/78dn90bA5ILf6x8kHlP4ez4Nu3XRsJvUo
	r4yRz+Cb4Rz5HI0nk2xoHr8PjTGzJ8Sudx/64OVPUwSL6KyVnPlV7F4I22gugTXAcbdRSqWyCvcTZ
	uKTTtc9x+3XCjXC6hnMXcFUpa+DzOJJq/4dLNtgYBLNJksk9rzhSRgyW6BJ8N3XKg1cE6aHiJMwtx
	S87ZpDCbuX6qaztQ82qR7y6ZLVQX8wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZuv-0001xS-B8; Thu, 09 Jan 2020 15:40:13 +0000
Date: Thu, 9 Jan 2020 17:39:37 +0200
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.23363.1578584397.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Dainis Jonitis via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Dainis Jonitis <dainis.jonitis@ui.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] iwinfo: Add support for 64-bit byte counters
Content-Type: multipart/mixed; boundary="===============1026768496473702349=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1026768496473702349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1026768496473702349==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZud-0001wD-AR
	for openwrt-devel@lists.openwrt.org; Thu, 09 Jan 2020 15:39:56 +0000
Received: by mail-io1-xd2a.google.com with SMTP id c16so7547453ioo.8
        for <openwrt-devel@lists.openwrt.org>; Thu, 09 Jan 2020 07:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ui.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=r9bVHS1/GBzisQFZT5UWS1mQn0XKXrVAlBfTk48kmJ4=;
        b=TAc4/f4EM2W5HcjIcoISqtzdeR4aVYVsRiqrhOMs1kDHxJ0GSAe6psQ29vxs0ZNhCR
         G2wp1fDEQvQaFBjKfDnR/usJCnEfMCqkF8XqnHNt+mIbIC60001Ti8HHPUGE4kcKPd9C
         yWVa5pAFCG1h4Sz1I6Wo0Wx/wxfv7x5uTVipU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=r9bVHS1/GBzisQFZT5UWS1mQn0XKXrVAlBfTk48kmJ4=;
        b=MlbU7LanoJsb4uCptTAbBhE0eSVkKY3pRcx9kyzxxQGRP8R26nx/gZ+3Pq1mP1xsBC
         gWJHjawgrO6uerkBgXGKTbWLcnkwltLGza21pMaVaUNCNOUmxbPM1sPs6lh80uSjn/GZ
         JZMnMP6QonaMAE+FfWF0q0Pi0uZC5G3MrJvuL+DhzuisPTbgkLh02G7u51I5Z/EdqLnB
         vSnZDNpJXXnWK+lfC4iYSS+ynToh5Z6QHK7pfiml1qulpkQ75h8Qm0YawpxXiRF78klI
         8PhJvNAoWdL2HhU4pojck+TVS8WHQ5iiFpf17gyENCgVZ68krN9ulf+8To36kHZo+AKW
         S7Rg==
X-Gm-Message-State: APjAAAVaGW5LmWjXFRGpgxXhpzuRtR6dtLljmblgYE8hrYyKjnGe8W3I
	JdjK0yEnkX4Ao4aga/K/keS0mnVUY+GTHsbD44nMXUw9gIx+aQ==
X-Google-Smtp-Source: APXvYqzRd6OF8z+deDFCVNPHMMn8uvMRQM8Dj/Hw+5q6HABOgxzmNCVvyatg53+y3aNXvVaMHL5bjHwiIPu4rEnC3ko=
X-Received: by 2002:a02:2a8e:: with SMTP id w136mr9487383jaw.117.1578584390034;
 Thu, 09 Jan 2020 07:39:50 -0800 (PST)
MIME-Version: 1.0
From: Dainis Jonitis <dainis.jonitis@ui.com>
Date: Thu, 9 Jan 2020 17:39:37 +0200
Message-ID: <CAGpbteRqD4q3OKn=pULJHVpP6E5KHUQOt2TzHVEFLggpmSwJpg@mail.gmail.com>
Subject: iwinfo: Add support for 64-bit byte counters
To: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="000000000000d122b4059bb6d131"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_073955_376402_D87B5F9E 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:d2a listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

--000000000000d122b4059bb6d131
Content-Type: multipart/alternative; boundary="000000000000d122b1059bb6d12f"

--000000000000d122b1059bb6d12f
Content-Type: text/plain; charset="UTF-8"

Hello,

This patch adds support for 64-bit byte counters for assoclist command. It
uses NL80211_STA_INFO_RX_BYTES64 / NL80211_STA_INFO_TX_BYTES64 fields from
netlink info (the same way as iw station dump).

New clients of libiwinfo are suggested to use new explicit names
rx_bytes64/tx_bytes64/rx_bytes32/tx_bytes32. But to preserve source code
compatibility with older clients old names rx_bytes/tx_bytes are also left.
I used anonymous union to make sure that old name is alias of new one.

If driver supports the 64-bit values then legacy fields will have clamped
value of max uint32_t.

If preserving compatibility with external code is not important then 32-bit
values can be completely dropped from iwinfo_assoclist_entry. Old code will
break at compile time, since they will not found rx_bytes/tx_bytes
structure fields and while fixing their code (hopefully) will also fix
logic to consume the full 64-bit values. Please advise which approach is
preferred.

regards,

Dainis

--000000000000d122b1059bb6d12f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>This patch adds suppo=
rt for 64-bit byte counters for assoclist command. It uses NL80211_STA_INFO=
_RX_BYTES64 / NL80211_STA_INFO_TX_BYTES64 fields from netlink info (the sam=
e way as iw station dump).<br><br></div><div>New clients of libiwinfo are s=
uggested to use new explicit names rx_bytes64/tx_bytes64/rx_bytes32/tx_byte=
s32. But to preserve source code compatibility with older clients old names=
 rx_bytes/tx_bytes are also left. I used anonymous union to make sure that =
old name is alias of new one. <br></div><div><br></div><div>If driver suppo=
rts the 64-bit values then legacy fields will have clamped value of max uin=
t32_t.</div><div><br></div><div>If preserving compatibility with external c=
ode is not important then 32-bit values can be completely dropped from iwin=
fo_assoclist_entry. Old code will break at compile time, since they will no=
t found rx_bytes/tx_bytes structure fields and while fixing their code (hop=
efully) will also fix logic to consume the full 64-bit values. Please advis=
e which approach is preferred.<br></div><div><br>regards,<br><br></div><div=
>Dainis<br></div></div>

--000000000000d122b1059bb6d12f--

--000000000000d122b4059bb6d131
Content-Type: application/octet-stream; 
	name="0001-iwinfo-Use-64-bit-packet-counters-for-assoclist.patch"
Content-Disposition: attachment; 
	filename="0001-iwinfo-Use-64-bit-packet-counters-for-assoclist.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k56w310v0>
X-Attachment-Id: f_k56w310v0

RnJvbSA5ZGEzNjI4MTdlOGEwZmIxNTI3ZjIwZGRlOTQ1YmZlODZjMThlZTk3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYWluaXMgSm9uaXRpcyA8ZGFpbmlzLmpvbml0aXNAdWJudC5j
b20+CkRhdGU6IFRodSwgMiBKYW4gMjAyMCAxNDowNDoyNCArMDIwMApTdWJqZWN0OiBbUEFUQ0hd
IFVzZSA2NCBiaXQgcGFja2V0IGNvdW50ZXJzIGZvciBhc3NvY2xpc3QKCldoZW4gYXZhaWxhYmxl
LCB1c2UgNjQtYml0IHBhY2tldCBjb3VudGVycyByeC90eF9ieXRlczY0LiBOZXcgMzItYml0CmNv
dW50ZXJzIHJ4L3R4X2J5dGVzMzIgYXJlIGd1YXJhbnRlZWQgdG8gY2xhbXAgdG8gbWF4IDMyLWJp
dCB2YWx1ZQphbmQgbmV2ZXIgd3JhcCBhcm91bmQuIEZvciBjb21wYXRpYmlsaXR5IHdpdGggbGVn
YWN5IGNsaWVudHMgdGhlIG9sZAp2YWx1ZXMgcngvdHhfYnl0ZXMgYXJlIGp1c3QgYWxpYXNlcyBv
ZiBuZXcgcngvdHhfYnl0ZXMzMi4KLS0tCiBpbmNsdWRlL2l3aW5mby5oIHwgMTIgKysrKysrKysr
Ky0tCiBpd2luZm9fbmw4MDIxMS5jIHwgMjQgKysrKysrKysrKysrKysrKysrKystLS0tCiAyIGZp
bGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9pd2luZm8uaCBiL2luY2x1ZGUvaXdpbmZvLmgKaW5kZXggNWU2NDI5NC4uODYx
MGZjYiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9pd2luZm8uaAorKysgYi9pbmNsdWRlL2l3aW5mby5o
CkBAIC0xMTksOCArMTE5LDE2IEBAIHN0cnVjdCBpd2luZm9fYXNzb2NsaXN0X2VudHJ5IHsKIAl1
aW50NjRfdCByeF9kcm9wX21pc2M7CiAJc3RydWN0IGl3aW5mb19yYXRlX2VudHJ5IHJ4X3JhdGU7
CiAJc3RydWN0IGl3aW5mb19yYXRlX2VudHJ5IHR4X3JhdGU7Ci0JdWludDMyX3QgcnhfYnl0ZXM7
Ci0JdWludDMyX3QgdHhfYnl0ZXM7CisJdWludDY0X3QgcnhfYnl0ZXM2NDsKKwl1aW50NjRfdCB0
eF9ieXRlczY0OworCXVuaW9uIHsKKwkJdWludDMyX3QgcnhfYnl0ZXMzMjsgICAgLyogY2xhbXBl
ZCB0byBtYXggdWludDMyX3QgKi8KKwkJdWludDMyX3QgcnhfYnl0ZXM7ICAgICAgLyogT0JTT0xF
VEVEOiBhbGlhcyBmb3IgbGVnYWN5IGNsaWVudHMqLworCX07CisJdW5pb24geworCQl1aW50MzJf
dCB0eF9ieXRlczMyOyAgICAvKiBjbGFtcGVkIHRvIG1heCB1aW50MzJfdCAqLworCQl1aW50MzJf
dCB0eF9ieXRlczsgICAgICAvKiBPQlNPTEVURUQ6IGFsaWFzIGZvciBsZWdhY3kgY2xpZW50cyov
CisJfTsKIAl1aW50MzJfdCB0eF9yZXRyaWVzOwogCXVpbnQzMl90IHR4X2ZhaWxlZDsKIAl1aW50
NjRfdCB0X29mZnNldDsKZGlmZiAtLWdpdCBhL2l3aW5mb19ubDgwMjExLmMgYi9pd2luZm9fbmw4
MDIxMS5jCmluZGV4IDJiMmEwNDMuLjZiMzU4ODggMTAwNjQ0Ci0tLSBhL2l3aW5mb19ubDgwMjEx
LmMKKysrIGIvaXdpbmZvX25sODAyMTEuYwpAQCAtMTk1Myw2ICsxOTUzLDggQEAgc3RhdGljIGlu
dCBubDgwMjExX2dldF9hc3NvY2xpc3RfY2Ioc3RydWN0IG5sX21zZyAqbXNnLCB2b2lkICphcmcp
CiAJCVtOTDgwMjExX1NUQV9JTkZPX1NJR05BTF9BVkddICAgID0geyAudHlwZSA9IE5MQV9VOCAg
ICAgfSwKIAkJW05MODAyMTFfU1RBX0lORk9fUlhfQllURVNdICAgICAgPSB7IC50eXBlID0gTkxB
X1UzMiAgICB9LAogCQlbTkw4MDIxMV9TVEFfSU5GT19UWF9CWVRFU10gICAgICA9IHsgLnR5cGUg
PSBOTEFfVTMyICAgIH0sCisJCVtOTDgwMjExX1NUQV9JTkZPX1JYX0JZVEVTNjRdICAgID0geyAu
dHlwZSA9IE5MQV9VNjQgICAgfSwKKwkJW05MODAyMTFfU1RBX0lORk9fVFhfQllURVM2NF0gICAg
PSB7IC50eXBlID0gTkxBX1U2NCAgICB9LAogCQlbTkw4MDIxMV9TVEFfSU5GT19UWF9SRVRSSUVT
XSAgICA9IHsgLnR5cGUgPSBOTEFfVTMyICAgIH0sCiAJCVtOTDgwMjExX1NUQV9JTkZPX1RYX0ZB
SUxFRF0gICAgID0geyAudHlwZSA9IE5MQV9VMzIgICAgfSwKIAkJW05MODAyMTFfU1RBX0lORk9f
Q09OTkVDVEVEX1RJTUVdPSB7IC50eXBlID0gTkxBX1UzMiAgICB9LApAQCAtMjAxNiwxMSArMjAx
OCwyNSBAQCBzdGF0aWMgaW50IG5sODAyMTFfZ2V0X2Fzc29jbGlzdF9jYihzdHJ1Y3QgbmxfbXNn
ICptc2csIHZvaWQgKmFyZykKIAkJICAgICAgICAgICAgICAgICAgICAgIHNpbmZvW05MODAyMTFf
U1RBX0lORk9fVFhfQklUUkFURV0sIHJhdGVfcG9saWN5KSkKIAkJCW5sODAyMTFfcGFyc2VfcmF0
ZWluZm8ocmluZm8sICZlLT50eF9yYXRlKTsKIAotCQlpZiAoc2luZm9bTkw4MDIxMV9TVEFfSU5G
T19SWF9CWVRFU10pCi0JCQllLT5yeF9ieXRlcyA9IG5sYV9nZXRfdTMyKHNpbmZvW05MODAyMTFf
U1RBX0lORk9fUlhfQllURVNdKTsKKwkJaWYgKHNpbmZvW05MODAyMTFfU1RBX0lORk9fUlhfQllU
RVM2NF0pIHsKKwkJCXVpbnQ2NF90IHU2NCA9IG5sYV9nZXRfdTY0KHNpbmZvW05MODAyMTFfU1RB
X0lORk9fUlhfQllURVM2NF0pOworCQkJZS0+cnhfYnl0ZXM2NCA9IHU2NDsKKwkJCWUtPnJ4X2J5
dGVzMzIgPSAodTY0IDw9IFVJTlQzMl9NQVgpID8gKHVpbnQzMl90KXU2NCA6IFVJTlQzMl9NQVg7
CisJCX0gZWxzZSBpZiAoc2luZm9bTkw4MDIxMV9TVEFfSU5GT19SWF9CWVRFU10pIHsKKwkJCXVp
bnQzMl90IHUzMiA9IG5sYV9nZXRfdTMyKHNpbmZvW05MODAyMTFfU1RBX0lORk9fUlhfQllURVNd
KTsKKwkJCWUtPnJ4X2J5dGVzMzIgPSB1MzI7CisJCQllLT5yeF9ieXRlczY0ID0gdTMyOworCQl9
CiAKLQkJaWYgKHNpbmZvW05MODAyMTFfU1RBX0lORk9fVFhfQllURVNdKQotCQkJZS0+dHhfYnl0
ZXMgPSBubGFfZ2V0X3UzMihzaW5mb1tOTDgwMjExX1NUQV9JTkZPX1RYX0JZVEVTXSk7CisJCWlm
IChzaW5mb1tOTDgwMjExX1NUQV9JTkZPX1RYX0JZVEVTNjRdKSB7CisJCQl1aW50NjRfdCB1NjQg
PSBubGFfZ2V0X3U2NChzaW5mb1tOTDgwMjExX1NUQV9JTkZPX1RYX0JZVEVTNjRdKTsKKwkJCWUt
PnR4X2J5dGVzNjQgPSB1NjQ7CisJCQllLT50eF9ieXRlczMyID0gKHU2NCA8PSBVSU5UMzJfTUFY
KSA/ICh1aW50MzJfdCl1NjQgOiBVSU5UMzJfTUFYOworCQl9IGVsc2UgaWYgKHNpbmZvW05MODAy
MTFfU1RBX0lORk9fVFhfQllURVNdKSB7CisJCQl1aW50MzJfdCB1MzIgPSBubGFfZ2V0X3UzMihz
aW5mb1tOTDgwMjExX1NUQV9JTkZPX1RYX0JZVEVTXSk7CisJCQllLT50eF9ieXRlczMyID0gdTMy
OworCQkJZS0+dHhfYnl0ZXM2NCA9IHUzMjsKKwkJfQogCiAJCWlmIChzaW5mb1tOTDgwMjExX1NU
QV9JTkZPX1RYX1JFVFJJRVNdKQogCQkJZS0+dHhfcmV0cmllcyA9IG5sYV9nZXRfdTMyKHNpbmZv
W05MODAyMTFfU1RBX0lORk9fVFhfUkVUUklFU10pOwotLSAKMi4xOS4xCgo=
--000000000000d122b4059bb6d131--


--===============1026768496473702349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1026768496473702349==--

