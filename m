Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8461CD4EE
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 11:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UWcmyThCDR8KMkmVxyG3xFlZ2qpailNzTcTL9mRhbq0=; b=JOnbfeHXO9JhnG/f8zCk6WPAR
	WgSzxd7PLyqAU2/bGrM+8z3QLqypF32V+vcaJzGpq0UPHwpG/7rSRlpQo0T+JEuof2cdbUnkJkx0h
	iQ93PgquLBVadynOtT+gcWBJHAcliB57xNJEMkAIdj9R3ccchWfpxRx+XsLZTrwoL1F+l9jnEY9+y
	mgYIIeUvkRGr9lQ50UaxbfA0M1FY1snOZ1KdpANycSGLUrZJKAuX8P9mpZQG/Vh4QDwJSz056QLb/
	2D9zte6jIIXTNoOGB6T5/dax+AjE1Oy7kkagvzKsKV5hsavQyZi3NFhR6eijbfwyc8JXjIYl9qW5G
	W/WLIipBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4n9-000275-Qg; Mon, 11 May 2020 09:32:07 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4n1-00026N-4S
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 09:32:01 +0000
Received: by mail-ed1-x532.google.com with SMTP id d16so7337670edq.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 May 2020 02:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2PWTfVfG7LVmeI83owDjWHL67g1O7kKFAaBcWoJ8id4=;
 b=TFMZqRVxqw/kNZDcJJm9fa6nlYSxyH9fmrDStoLYSsXnh09+dSouWyL+XAyowZv3Qz
 D0xDqUWyWgItsGlJD0Z5a7C+aHIGz78H3cPhkCqTxM05KaP9mw05DfMUiaGvaJsSwn0g
 G+NV10U3tJ2P1GNnQi59PMdryFnMP18E8djkp29UJaslTpasMijQJGdSpmj7tNE1unq2
 efrOeIguXT2FWLA6PaODvRlMhbDNAjBabkG1z1pOg4cosjiCRTJSC5yfqEnKR/XRKPEh
 g+yMcsLUAVZ8tftu7hqRNH3nfukkZCm4BwijwiGkyWxug97kbR97zrbdTBUgA7RSDHui
 uLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2PWTfVfG7LVmeI83owDjWHL67g1O7kKFAaBcWoJ8id4=;
 b=skf8+fDyrabfDBojKw0A95VTtMMzTzh70dxRoCRTOjMTH96c4JPhXm9Z+bxPpGUq7F
 jcVQDAOybseySO0pTAR1QVvrujBQFcaonDi/Vu4taDz8m7LZlC7nDFNsJG/9ClHUQoof
 jHzQy4tINhbxL6fL6F3E9uCWLCDQJLNUEPxFm1s0enBhaIwaeOjuj5eXAzG1MBpUOmpC
 LXrtuMnn70Sw5fDO7C+/GWH8xaBV377EDbl9jYXcGOKSwcEre+EbrilrbWDkKJO594Ra
 URv7909scjTj6Rj3JNfzihNNTw3HZZDlY8loXkLQoX0EM54TDcXbhym8JC0VYUXE9b5P
 ObEA==
X-Gm-Message-State: AGi0PuYpJVsVg41ktW2eeVvGZ0LMgOLaDGlDJqPGaW0YT2ThiVimgg3p
 Oh0Eghb4XhbFcQc5U3ughxMbS/wjDAKFL3LKfvs=
X-Google-Smtp-Source: APiQypJq++zgvxduSUIrtTNu+h/LDT6JfQ5MkhCud977dBeoFN5x6Olsdvvrjt6qtIX9hlKVQ3/5AmHqMmQnJKLkMCU=
X-Received: by 2002:a50:a412:: with SMTP id u18mr5168250edb.192.1589189516347; 
 Mon, 11 May 2020 02:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
In-Reply-To: <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Mon, 11 May 2020 18:31:45 +0900
Message-ID: <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023159_207370_D336862D 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [ModemManager] How can I make ModemManager work
 right?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: multipart/mixed; boundary="===============0661409274392087833=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0661409274392087833==
Content-Type: multipart/alternative; boundary="0000000000009a4e7805a55c049a"

--0000000000009a4e7805a55c049a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexsander and people,

I am sorry, I post too much emails......

But, I made it work! As Bj=C3=B8rn said, I tried "ifup broadband" and "ifst=
atus
broadband". And I got :
{
        "up": true,
        "pending": false,
        "available": true,
        "autostart": true,
        "dynamic": false,
        "uptime": 984,
        "l3_device": "ppp0",
        "proto": "modemmanager",
        "updated": [
                "addresses",
                "routes"
        ],
        "metric": 0,
        "dns_metric": 0,
        "delegation": true,
        "ipv4-address": [
                {
                        "address": "27.165.56.149",
                        "mask": 32
                }
        ],
        "ipv6-address": [

        ],
        "ipv6-prefix": [

        ],
        "ipv6-prefix-assignment": [

        ],
        "route": [
                {
                        "target": "0.0.0.0",
                        "mask": 0,
                        "nexthop": "10.64.64.64",
                        "source": "0.0.0.0\/0"
                }
        ],
        "dns-server": [
                "223.62.230.7",
                "113.217.240.31"
        ],
        "dns-search": [

        ],
        "inactive": {
                "ipv4-address": [

                ],
                "ipv6-address": [

                ],
                "route": [

                ],
                "dns-server": [

                ],
                "dns-search": [

                ]
        },
        "data": {

        }
}

ifconfig shows "ppp0" :
ppp0      Link encap:Point-to-Point Protocol
          inet addr:27.165.56.149  P-t-P:10.64.64.64  Mask:255.255.255.255
          UP POINTOPOINT RUNNING NOARP MULTICAST  MTU:1500  Metric:1
          RX packets:71 errors:0 dropped:0 overruns:0 frame:0
          TX packets:82 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:3
          RX bytes:6471 (6.3 KiB)  TX bytes:6404 (6.2 KiB)

And ping 8.8.8.8 works!!

Thank you alexander,  Bj=C3=B8rn and people in this list!

But there is still problem the interface is ppp0 not wwan0 or something
like this. I will try to figure out this.
Thank you all.

Jeonghum

2020=EB=85=84 5=EC=9B=94 11=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 6:05, J=
eonghum Joh <oosaprogrammer@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1=
:

> Hello Alexander,
>
> I didn't attach antenna. With antenna, I received improved print I think:
>
> root@LEDE:~# mmcli -L
>     /org/freedesktop/ModemManager1/Modem/0 [Quectel] EC25
> root@LEDE:~# mmcli -m 0
>   --------------------------------
>   General  |            dbus path: /org/freedesktop/ModemManager1/Modem/0
>            |            device id: 97ffc2eeb6d3ad975d9089850aa3b9b4945299=
19
>   --------------------------------
>   Hardware |         manufacturer: Quectel
>            |                model: EC25
>            |    firmware revision: EC25EFAR04A02M4G_SKT
>            |            supported: gsm-umts, lte
>            |              current: gsm-umts, lte
>            |         equipment id: 356673040475612
>   --------------------------------
>   System   |               device:
> /sys/devices/platform/1a0c0000.usb/usb1/1-2
>            |              drivers: option
>            |               plugin: Quectel
>            |         primary port: ttyUSB2
>            |                ports: ttyUSB0 (qcdm), ttyUSB2 (at), ttyUSB3
> (at)
>   --------------------------------
>   Numbers  |                  own: 01224316205
>   --------------------------------
>   Status   |       unlock retries: sim-pin (3), sim-pin2 (3), sim-puk
> (10), sim-puk2 (10)
>            |                state: connected        <<<<<<<<<<<<<<<<<<
>            |          power state: on
>            |          access tech: lte
>            |       signal quality: 80% (recent)
>   --------------------------------
>   Modes    |            supported: allowed: 2g, 3g, 4g; preferred: none
>            |              current: allowed: 2g, 3g, 4g; preferred: none
>   --------------------------------
>   IP       |            supported: ipv4, ipv6, ipv4v6
>   --------------------------------
>   3GPP     |                 imei: 356673040475612
>            |          operator id: 45005
>            |        operator name: SKTelecom         <<<<<<<<<<<<<<<<<<
>            |         registration: home         <<<<<<<<<<<<<<<<<<
>   --------------------------------
>   3GPP EPS | ue mode of operation: csps-1
>   --------------------------------
>   SIM      |            dbus path: /org/freedesktop/ModemManager1/SIM/0
>   --------------------------------
>   Bearer   |            dbus path: /org/freedesktop/ModemManager1/Bearer/=
0
> root@LEDE:~# mmcli -b 0
>   --------------------------------
>   General            |  dbus path: /org/freedesktop/ModemManager1/Bearer/=
0
>                      |       type: default
>   --------------------------------
>   Status             |  connected: yes
>                      |  suspended: no
>                      |  interface: ttyUSB2
>                      | ip timeout: 20
>   --------------------------------
>   Properties         |        apn: lte-internet.sktelecom.com
>                      |    roaming: allowed         <<<<<<<<<<<<<<<<<<
>   --------------------------------
>   IPv4 configuration |     method: ppp         <<<<<<<<<<<<<<<<<<
> <<<<<<<<<<<<<<<<<<
>                      |     prefix: 0
>   --------------------------------
>   Statistics         |   duration: 60
> root@LEDE:~# mmcli -m 0 --list-bearers
> error: no actions specified
>
>
>
> But IPv4 configuration method is ppp.
> I think this is what you said that the connection is ppp not QMI.
> Then How is this supposed to be in correct and righteous setting? Should
> this be QMI or something like that?
>
> Thank you very much.
> Jeonghum
>
>
>
> 2020=EB=85=84 5=EC=9B=94 11=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 4:36,=
 Aleksander Morgado <aleksander@aleksander.es>=EB=8B=98=EC=9D=B4
> =EC=9E=91=EC=84=B1:
>
>> Hey!
>>
>> >
>> > I found one :
>> > https://github.com/lkundrak/openwrt-network-manager
>> >
>> > I wonder if this is righty and worthy to try.
>> > I am now trying porting it anyway.
>> >
>>
>> I would first write to lkundrak (who is one of the NetworkManager
>> maintainers) to ask whether this port is usable or not.
>>
>> --
>> Aleksander
>> https://aleksander.es
>>
>

--0000000000009a4e7805a55c049a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGVsbG8gQWxleHNhbmRlciBhbmQgcGVvcGxlLDxkaXY+PGJyPjwvZGl2
PjxkaXY+SSBhbSBzb3JyeSwgSSBwb3N0IHRvbyBtdWNoIGVtYWlscy4uLi4uLjwvZGl2PjxkaXY+
PGJyPjwvZGl2PjxkaXY+QnV0LCBJIG1hZGUgaXQgd29yayEgQXMgQmrDuHJuIHNhaWQsIEkgdHJp
ZWQgJnF1b3Q7aWZ1cCBicm9hZGJhbmQmcXVvdDsgYW5kICZxdW90O2lmc3RhdHVzIGJyb2FkYmFu
ZCZxdW90Oy4gQW5kIEkgZ290IDo8L2Rpdj48ZGl2Pns8YnI+wqAgwqAgwqAgwqAgJnF1b3Q7dXAm
cXVvdDs6IHRydWUsPGJyPsKgIMKgIMKgIMKgICZxdW90O3BlbmRpbmcmcXVvdDs6IGZhbHNlLDxi
cj7CoCDCoCDCoCDCoCAmcXVvdDthdmFpbGFibGUmcXVvdDs6IHRydWUsPGJyPsKgIMKgIMKgIMKg
ICZxdW90O2F1dG9zdGFydCZxdW90OzogdHJ1ZSw8YnI+wqAgwqAgwqAgwqAgJnF1b3Q7ZHluYW1p
YyZxdW90OzogZmFsc2UsPGJyPsKgIMKgIMKgIMKgICZxdW90O3VwdGltZSZxdW90OzogOTg0LDxi
cj7CoCDCoCDCoCDCoCAmcXVvdDtsM19kZXZpY2UmcXVvdDs6ICZxdW90O3BwcDAmcXVvdDssPGJy
PsKgIMKgIMKgIMKgICZxdW90O3Byb3RvJnF1b3Q7OiAmcXVvdDttb2RlbW1hbmFnZXImcXVvdDss
PGJyPsKgIMKgIMKgIMKgICZxdW90O3VwZGF0ZWQmcXVvdDs6IFs8YnI+wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgJnF1b3Q7YWRkcmVzc2VzJnF1b3Q7LDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCAmcXVvdDtyb3V0ZXMmcXVvdDs8YnI+wqAgwqAgwqAgwqAgXSw8YnI+wqAgwqAgwqAgwqAgJnF1
b3Q7bWV0cmljJnF1b3Q7OiAwLDxicj7CoCDCoCDCoCDCoCAmcXVvdDtkbnNfbWV0cmljJnF1b3Q7
OiAwLDxicj7CoCDCoCDCoCDCoCAmcXVvdDtkZWxlZ2F0aW9uJnF1b3Q7OiB0cnVlLDxicj7CoCDC
oCDCoCDCoCAmcXVvdDtpcHY0LWFkZHJlc3MmcXVvdDs6IFs8YnI+wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgezxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAmcXVvdDthZGRy
ZXNzJnF1b3Q7OiAmcXVvdDsyNy4xNjUuNTYuMTQ5JnF1b3Q7LDxicj7CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCAmcXVvdDttYXNrJnF1b3Q7OiAzMjxicj7CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCB9PGJyPsKgIMKgIMKgIMKgIF0sPGJyPsKgIMKgIMKgIMKgICZxdW90O2lwdjYt
YWRkcmVzcyZxdW90OzogWzxicj48YnI+wqAgwqAgwqAgwqAgXSw8YnI+wqAgwqAgwqAgwqAgJnF1
b3Q7aXB2Ni1wcmVmaXgmcXVvdDs6IFs8YnI+PGJyPsKgIMKgIMKgIMKgIF0sPGJyPsKgIMKgIMKg
IMKgICZxdW90O2lwdjYtcHJlZml4LWFzc2lnbm1lbnQmcXVvdDs6IFs8YnI+PGJyPsKgIMKgIMKg
IMKgIF0sPGJyPsKgIMKgIMKgIMKgICZxdW90O3JvdXRlJnF1b3Q7OiBbPGJyPsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIHs8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJnF1
b3Q7dGFyZ2V0JnF1b3Q7OiAmcXVvdDswLjAuMC4wJnF1b3Q7LDxicj7CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCAmcXVvdDttYXNrJnF1b3Q7OiAwLDxicj7CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAmcXVvdDtuZXh0aG9wJnF1b3Q7OiAmcXVvdDsxMC42NC42
NC42NCZxdW90Oyw8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJnF1b3Q7
c291cmNlJnF1b3Q7OiAmcXVvdDswLjAuMC4wXC8wJnF1b3Q7PGJyPsKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIH08YnI+wqAgwqAgwqAgwqAgXSw8L2Rpdj7CoCDCoCDCoCDCoCAmcXVvdDtkbnMtc2Vy
dmVyJnF1b3Q7OiBbPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICZxdW90OzIyMy42Mi4yMzAu
NyZxdW90Oyw8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJnF1b3Q7MTEzLjIxNy4yNDAuMzEm
cXVvdDs8YnI+wqAgwqAgwqAgwqAgXSw8YnI+wqAgwqAgwqAgwqAgJnF1b3Q7ZG5zLXNlYXJjaCZx
dW90OzogWzxicj48YnI+wqAgwqAgwqAgwqAgXSw8YnI+wqAgwqAgwqAgwqAgJnF1b3Q7aW5hY3Rp
dmUmcXVvdDs6IHs8YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJnF1b3Q7aXB2NC1hZGRyZXNz
JnF1b3Q7OiBbPGJyPjxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBdLDxicj7CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAmcXVvdDtpcHY2LWFkZHJlc3MmcXVvdDs6IFs8YnI+PGJyPsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIF0sPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICZxdW90O3JvdXRl
JnF1b3Q7OiBbPGJyPjxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBdLDxicj7CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAmcXVvdDtkbnMtc2VydmVyJnF1b3Q7OiBbPGJyPjxicj7CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCBdLDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAmcXVvdDtkbnMtc2Vh
cmNoJnF1b3Q7OiBbPGJyPjxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBdPGJyPsKgIMKgIMKg
IMKgIH0sPGJyPsKgIMKgIMKgIMKgICZxdW90O2RhdGEmcXVvdDs6IHs8YnI+PGJyPsKgIMKgIMKg
IMKgIH08YnI+fTxicj48ZGl2Pjxicj48L2Rpdj48ZGl2PmlmY29uZmlnIHNob3dzICZxdW90O3Bw
cDAmcXVvdDsgOjwvZGl2PjxkaXY+cHBwMCDCoCDCoCDCoExpbmsgZW5jYXA6UG9pbnQtdG8tUG9p
bnQgUHJvdG9jb2w8YnI+wqAgwqAgwqAgwqAgwqAgaW5ldCBhZGRyOjI3LjE2NS41Ni4xNDkgwqBQ
LXQtUDoxMC42NC42NC42NCDCoE1hc2s6MjU1LjI1NS4yNTUuMjU1PGJyPsKgIMKgIMKgIMKgIMKg
IFVQIFBPSU5UT1BPSU5UIFJVTk5JTkcgTk9BUlAgTVVMVElDQVNUIMKgTVRVOjE1MDAgwqBNZXRy
aWM6MTxicj7CoCDCoCDCoCDCoCDCoCBSWCBwYWNrZXRzOjcxIGVycm9yczowIGRyb3BwZWQ6MCBv
dmVycnVuczowIGZyYW1lOjA8YnI+wqAgwqAgwqAgwqAgwqAgVFggcGFja2V0czo4MiBlcnJvcnM6
MCBkcm9wcGVkOjAgb3ZlcnJ1bnM6MCBjYXJyaWVyOjA8YnI+wqAgwqAgwqAgwqAgwqAgY29sbGlz
aW9uczowIHR4cXVldWVsZW46Mzxicj7CoCDCoCDCoCDCoCDCoCBSWCBieXRlczo2NDcxICg2LjMg
S2lCKSDCoFRYIGJ5dGVzOjY0MDQgKDYuMiBLaUIpPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2Pjxk
aXY+QW5kIHBpbmcgOC44LjguOCB3b3JrcyEhPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5UaGFu
ayB5b3UgYWxleGFuZGVyLMKgDQoNCkJqw7hybiBhbmQgcGVvcGxlIGluIHRoaXMgbGlzdCE8L2Rp
dj48ZGl2Pjxicj48L2Rpdj48ZGl2PkJ1dCB0aGVyZSBpcyBzdGlsbCBwcm9ibGVtIHRoZSBpbnRl
cmZhY2UgaXMgcHBwMCBub3Qgd3dhbjAgb3Igc29tZXRoaW5nIGxpa2UgdGhpcy4gSSB3aWxsIHRy
eSB0byBmaWd1cmUgb3V0IHRoaXMuPC9kaXY+PGRpdj5UaGFuayB5b3UgYWxsLjwvZGl2PjxkaXY+
PGJyPjwvZGl2PjxkaXY+SmVvbmdodW08L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxf
cXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj4yMDIw64WEIDXsm5QgMTHs
nbwgKOyblCkg7Jik7ZuEIDY6MDUsIEplb25naHVtIEpvaCAmbHQ7PGEgaHJlZj0ibWFpbHRvOm9v
c2Fwcm9ncmFtbWVyQGdtYWlsLmNvbSI+b29zYXByb2dyYW1tZXJAZ21haWwuY29tPC9hPiZndDvr
i5jsnbQg7J6R7ISxOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0
eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigy
MDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+PGRpdiBkaXI9Imx0ciI+SGVsbG8gQWxleGFu
ZGVyLDxkaXY+PGJyPjwvZGl2PjxkaXY+SSBkaWRuJiMzOTt0IGF0dGFjaCBhbnRlbm5hLiBXaXRo
IGFudGVubmEsIEkgcmVjZWl2ZWQgaW1wcm92ZWQgcHJpbnQgSSB0aGluazo8L2Rpdj48ZGl2Pjxi
cj48L2Rpdj48ZGl2PnJvb3RATEVERTp+IyBtbWNsaSAtTDxicj7CoCDCoCAvb3JnL2ZyZWVkZXNr
dG9wL01vZGVtTWFuYWdlcjEvTW9kZW0vMCBbUXVlY3RlbF0gRUMyNTxicj5yb290QExFREU6fiMg
bW1jbGkgLW0gMDxicj7CoCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj7CoCBH
ZW5lcmFsIMKgfCDCoCDCoCDCoCDCoCDCoCDCoGRidXMgcGF0aDogL29yZy9mcmVlZGVza3RvcC9N
b2RlbU1hbmFnZXIxL01vZGVtLzA8YnI+wqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKg
IMKgZGV2aWNlIGlkOiA5N2ZmYzJlZWI2ZDNhZDk3NWQ5MDg5ODUwYWEzYjliNDk0NTI5OTE5PGJy
PsKgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPsKgIEhhcmR3YXJlIHwgwqAg
wqAgwqAgwqAgbWFudWZhY3R1cmVyOiBRdWVjdGVsPGJyPsKgIMKgIMKgIMKgIMKgIMKgfCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoG1vZGVsOiBFQzI1PGJyPsKgIMKgIMKgIMKgIMKgIMKgfCDCoCDC
oGZpcm13YXJlIHJldmlzaW9uOiBFQzI1RUZBUjA0QTAyTTRHX1NLVDxicj7CoCDCoCDCoCDCoCDC
oCDCoHwgwqAgwqAgwqAgwqAgwqAgwqBzdXBwb3J0ZWQ6IGdzbS11bXRzLCBsdGU8YnI+wqAgwqAg
wqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgIMKgY3VycmVudDogZ3NtLXVtdHMsIGx0ZTxi
cj7CoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgZXF1aXBtZW50IGlkOiAzNTY2NzMwNDA0
NzU2MTI8YnI+wqAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+wqAgU3lzdGVt
IMKgIHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZGV2aWNlOiAvc3lzL2RldmljZXMvcGxhdGZvcm0v
MWEwYzAwMDAudXNiL3VzYjEvMS0yPGJyPsKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGRyaXZlcnM6IG9wdGlvbjxicj7CoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgcGx1Z2luOiBRdWVjdGVsPGJyPsKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDC
oCBwcmltYXJ5IHBvcnQ6IHR0eVVTQjI8YnI+wqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgcG9ydHM6IHR0eVVTQjAgKHFjZG0pLCB0dHlVU0IyIChhdCksIHR0eVVTQjMg
KGF0KTxicj7CoCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj7CoCBOdW1iZXJz
IMKgfCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG93bjogMDEyMjQzMTYyMDU8YnI+wqAgLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+wqAgU3RhdHVzIMKgIHwgwqAgwqAgwqAg
dW5sb2NrIHJldHJpZXM6IHNpbS1waW4gKDMpLCBzaW0tcGluMiAoMyksIHNpbS1wdWsgKDEwKSwg
c2ltLXB1azIgKDEwKTxicj7CoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBzdGF0ZTogY29ubmVjdGVkwqAgwqAgwqAgwqAgJmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0
OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7PGJyPsKgIMKgIMKg
IMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoHBvd2VyIHN0YXRlOiBvbjxicj7CoCDCoCDCoCDCoCDC
oCDCoHwgwqAgwqAgwqAgwqAgwqBhY2Nlc3MgdGVjaDogbHRlPGJyPsKgIMKgIMKgIMKgIMKgIMKg
fCDCoCDCoCDCoCBzaWduYWwgcXVhbGl0eTogODAlIChyZWNlbnQpPGJyPsKgIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPsKgIE1vZGVzIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDC
oHN1cHBvcnRlZDogYWxsb3dlZDogMmcsIDNnLCA0ZzsgcHJlZmVycmVkOiBub25lPGJyPsKgIMKg
IMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoCDCoGN1cnJlbnQ6IGFsbG93ZWQ6IDJnLCAz
ZywgNGc7IHByZWZlcnJlZDogbm9uZTxicj7CoCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLTxicj7CoCBJUCDCoCDCoCDCoCB8IMKgIMKgIMKgIMKgIMKgIMKgc3VwcG9ydGVkOiBpcHY0
LCBpcHY2LCBpcHY0djY8YnI+wqAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+
PC9kaXY+PGRpdj7CoCAzR1BQIMKgIMKgIHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaW1laTog
MzU2NjczMDQwNDc1NjEyPGJyPsKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoG9wZXJh
dG9yIGlkOiA0NTAwNTxicj7CoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqBvcGVyYXRvciBu
YW1lOiBTS1RlbGVjb20NCg0KwqAgwqAgwqAgwqAgJmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0
OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7DQoNCjxicj7CoCDC
oCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgcmVnaXN0cmF0aW9uOiBob21lDQoNCsKgIMKgIMKg
IMKgICZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsm
bHQ7Jmx0OyZsdDsmbHQ7Jmx0Ow0KDQo8YnI+wqAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS08YnI+wqAgM0dQUCBFUFMgfCB1ZSBtb2RlIG9mIG9wZXJhdGlvbjogY3Nwcy0xPGJyPsKg
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPsKgIFNJTSDCoCDCoCDCoHwgwqAg
wqAgwqAgwqAgwqAgwqBkYnVzIHBhdGg6IC9vcmcvZnJlZWRlc2t0b3AvTW9kZW1NYW5hZ2VyMS9T
SU0vMDxicj7CoCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj7CoCBCZWFyZXIg
wqAgfCDCoCDCoCDCoCDCoCDCoCDCoGRidXMgcGF0aDogL29yZy9mcmVlZGVza3RvcC9Nb2RlbU1h
bmFnZXIxL0JlYXJlci8wPGJyPnJvb3RATEVERTp+IyBtbWNsaSAtYiAwPGJyPsKgIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPsKgIEdlbmVyYWwgwqAgwqAgwqAgwqAgwqAgwqB8
IMKgZGJ1cyBwYXRoOiAvb3JnL2ZyZWVkZXNrdG9wL01vZGVtTWFuYWdlcjEvQmVhcmVyLzA8YnI+
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIHR5cGU6IGRlZmF1bHQ8
YnI+wqAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+wqAgU3RhdHVzIMKgIMKg
IMKgIMKgIMKgIMKgIHwgwqBjb25uZWN0ZWQ6IHllczxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHwgwqBzdXNwZW5kZWQ6IG5vPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgfCDCoGludGVyZmFjZTogdHR5VVNCMjxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoHwgaXAgdGltZW91dDogMjA8YnI+wqAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS08YnI+wqAgUHJvcGVydGllcyDCoCDCoCDCoCDCoCB8IMKgIMKgIMKgIMKgYXBuOiA8YSBo
cmVmPSJodHRwOi8vbHRlLWludGVybmV0LnNrdGVsZWNvbS5jb20iIHRhcmdldD0iX2JsYW5rIj5s
dGUtaW50ZXJuZXQuc2t0ZWxlY29tLmNvbTwvYT48YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB8IMKgIMKgcm9hbWluZzogYWxsb3dlZA0KDQrCoCDCoCDCoCDCoCAmbHQ7Jmx0OyZs
dDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0
OyZsdDsNCg0KPGJyPsKgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPsKgIElQ
djQgY29uZmlndXJhdGlvbiB8IMKgIMKgIG1ldGhvZDogcHBwDQoNCsKgIMKgIMKgIMKgICZsdDsm
bHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZs
dDsmbHQ7Jmx0Ow0KDQoNCsKgIMKgIMKgIMKgICZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsm
bHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0OyZsdDsmbHQ7Jmx0Ow0KDQoNCjxicj7CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgcHJlZml4OiAwPGJyPsKgIC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPsKgIFN0YXRpc3RpY3MgwqAgwqAgwqAgwqAg
fCDCoCBkdXJhdGlvbjogNjA8YnI+cm9vdEBMRURFOn4jIG1tY2xpIC1tIDAgLS1saXN0LWJlYXJl
cnM8YnI+ZXJyb3I6IG5vIGFjdGlvbnMgc3BlY2lmaWVkPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+QnV0IElQdjQgY29uZmlndXJhdGlv
biBtZXRob2QgaXMgcHBwLjwvZGl2PjxkaXY+SSB0aGluayB0aGlzIGlzIHdoYXQgeW91IHNhaWQg
dGhhdCB0aGUgY29ubmVjdGlvbiBpcyBwcHAgbm90IFFNSS48L2Rpdj48ZGl2PlRoZW4gSG93IGlz
IHRoaXMgc3VwcG9zZWQgdG8gYmUgaW4gY29ycmVjdCBhbmQgcmlnaHRlb3VzIHNldHRpbmc/IFNo
b3VsZCB0aGlzIGJlIFFNSSBvciBzb21ldGhpbmcgbGlrZSB0aGF0PzwvZGl2PjxkaXY+PGJyPjwv
ZGl2PjxkaXY+VGhhbmsgeW91IHZlcnkgbXVjaC48L2Rpdj48ZGl2Pkplb25naHVtPC9kaXY+PGRp
dj48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1
b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+MjAyMOuFhCA17JuUIDEx7J28
ICjsm5QpIOyYpO2bhCA0OjM2LCBBbGVrc2FuZGVyIE1vcmdhZG8gJmx0OzxhIGhyZWY9Im1haWx0
bzphbGVrc2FuZGVyQGFsZWtzYW5kZXIuZXMiIHRhcmdldD0iX2JsYW5rIj5hbGVrc2FuZGVyQGFs
ZWtzYW5kZXIuZXM8L2E+Jmd0O+uLmOydtCDsnpHshLE6PGJyPjwvZGl2PjxibG9ja3F1b3RlIGNs
YXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3JkZXIt
bGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij5IZXkhPGJy
Pg0KPGJyPg0KJmd0Ozxicj4NCiZndDsgSSBmb3VuZCBvbmUgOjxicj4NCiZndDsgPGEgaHJlZj0i
aHR0cHM6Ly9naXRodWIuY29tL2xrdW5kcmFrL29wZW53cnQtbmV0d29yay1tYW5hZ2VyIiByZWw9
Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2dpdGh1Yi5jb20vbGt1bmRyYWsv
b3BlbndydC1uZXR3b3JrLW1hbmFnZXI8L2E+PGJyPg0KJmd0Ozxicj4NCiZndDsgSSB3b25kZXIg
aWYgdGhpcyBpcyByaWdodHkgYW5kIHdvcnRoeSB0byB0cnkuPGJyPg0KJmd0OyBJIGFtIG5vdyB0
cnlpbmcgcG9ydGluZyBpdCBhbnl3YXkuPGJyPg0KJmd0Ozxicj4NCjxicj4NCkkgd291bGQgZmly
c3Qgd3JpdGUgdG8gbGt1bmRyYWsgKHdobyBpcyBvbmUgb2YgdGhlIE5ldHdvcmtNYW5hZ2VyPGJy
Pg0KbWFpbnRhaW5lcnMpIHRvIGFzayB3aGV0aGVyIHRoaXMgcG9ydCBpcyB1c2FibGUgb3Igbm90
Ljxicj4NCjxicj4NCi0tIDxicj4NCkFsZWtzYW5kZXI8YnI+DQo8YSBocmVmPSJodHRwczovL2Fs
ZWtzYW5kZXIuZXMiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vYWxl
a3NhbmRlci5lczwvYT48YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+DQo8L2Jsb2NrcXVvdGU+PC9k
aXY+DQo=
--0000000000009a4e7805a55c049a--


--===============0661409274392087833==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0661409274392087833==--

