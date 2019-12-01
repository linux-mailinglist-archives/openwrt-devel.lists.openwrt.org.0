Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9313710E39E
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Dec 2019 22:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrEAlxpjKWXCfeRkOqL0JgLcYiEMYOBitpbM0tqvmjk=; b=suGkCGYDqIu3Fl
	C9TcO3n9uwbgLG3n2Pc9m0wMgcm/DU3TNYSHc7PeFk5oJf5ULjfooOZe7xRgJEl+iWYtKxvxvUuNf
	UUiGASSkci90gydBKJEy+z0eMAo2N86/id0g59YmWBagH1/X6ShMcYuTl0D8l9Ts9RRrQc9ZPJ5rk
	MR3ORrvfrMUXOG2FBqEdZ7yuCHwnVcC8oIkhJtIk9lu5yri7oDsto1JNzkLZRb7CEi3v/Ur5ebF4z
	mDt1E1mhLKhzjVPQgaMWuvC5rHBXqZ4xWUa7Hd4A8aV45nNRljmlNANQrqa13VMekJeL8h1Mtsc6k
	GhEQ/7GOXg5jsdaj3J9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibWjV-0003Js-Ev; Sun, 01 Dec 2019 21:26:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibWjN-0003JP-AB
 for openwrt-devel@lists.openwrt.org; Sun, 01 Dec 2019 21:26:14 +0000
Received: by mail-pl1-x641.google.com with SMTP id j12so15315844plt.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Dec 2019 13:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K1d/UEtmwW76z1FqeE/JsUo/krEgn/B2V6RADGnKrIk=;
 b=lC7ze+BdLYzn+VKF9nVeYAX/rjzYFzBvKbKCR2wZ5SywzpVtiW7FQ1aldm4ViETK5h
 eb5rP9Ju1BmpV2saIHTFE54CEqY/EvmqVQbnWC9QwMgxJaYviO5jErYXMdPSyIQEbtKh
 B2WG1yVFDCRWlbgeLa/oXXJiEyXKzgP6dYS28r0yq4nlo6ziJ/L7Nu3CRjkXuVuXlcHv
 DsSJz+mOD/2zI1630aXw3nJLuXyYd9L4gfclpgeamBuzDTR0YCji8LlhkesSQoHjU8Nb
 /trhLaCWSNNEnl2Zxel4wK1UQCWSB1Sq0gLwD+9IL+f2lTg0iFj5Uaf97Axpw9yVli04
 eV2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=K1d/UEtmwW76z1FqeE/JsUo/krEgn/B2V6RADGnKrIk=;
 b=qCkWAwPvJ6768k0/r62PxF/6Qabi3tl7lfx2J6nNiLmjCw8GE0xZL1lmat8eBFISHK
 Nd4oAEyIgsD3Nt+qyJkdy4qEYhAOsyM9A0McwwUqU/+FOZed/iqcOjnERB9bmxrmHrDw
 rs9VFNsbqV8FQ9anACrDZ/vVnBIdb25viZT5edCK2SKAd2vGPB3fvOuToCfYcwXbUQ6h
 IGIJzlzhazvMADGdoT0jFA4emfD23TTDCCR1mhGvd3HExz/2/vIhHZY5ImS2xHyFel6h
 irrLtTo0jazkwG99cUb1Tr9gRfTWZhQL8nxWlMWKiHxB8OoVnlwfpbe+4Bbgo94yUHrt
 gNZA==
X-Gm-Message-State: APjAAAVMzz7xMaoGktmv1rBrIM1VY8bVMTFZTqYpEaP5aUn0qKlgL+eS
 gviOJ1D01N+/7tkQpPnd0nljQlmV
X-Google-Smtp-Source: APXvYqzy0mTmuEbR7VZzqu2y1ccT7OQPJnmdnUce6vzwFI7HcqF4ygbxg75ZPst5n+jGFyxeB/sGcA==
X-Received: by 2002:a17:902:9889:: with SMTP id
 s9mr24622994plp.18.1575235571251; 
 Sun, 01 Dec 2019 13:26:11 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 d23sm9288262pfo.176.2019.12.01.13.26.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Dec 2019 13:26:10 -0800 (PST)
To: Linus Walleij <linus.walleij@linaro.org>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
References: <20191127150503.GA61235@meh.true.cz>
 <CACRpkdbErhbNkQMK8haf=ZdSoLO55ke2FxErDJeknRKGVB6S0A@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 mQGiBEjPuBIRBACW9MxSJU9fvEOCTnRNqG/13rAGsj+vJqontvoDSNxRgmafP8d3nesnqPyR
 xGlkaOSDuu09rxuW+69Y2f1TzjFuGpBk4ysWOR85O2Nx8AJ6fYGCoeTbovrNlGT1M9obSFGQ
 X3IzRnWoqlfudjTO5TKoqkbOgpYqIo5n1QbEjCCwCwCg3DOH/4ug2AUUlcIT9/l3pGvoRJ0E
 AICDzi3l7pmC5IWn2n1mvP5247urtHFs/uusE827DDj3K8Upn2vYiOFMBhGsxAk6YKV6IP0d
 ZdWX6fqkJJlu9cSDvWtO1hXeHIfQIE/xcqvlRH783KrihLcsmnBqOiS6rJDO2x1eAgC8meAX
 SAgsrBhcgGl2Rl5gh/jkeA5ykwbxA/9u1eEuL70Qzt5APJmqVXR+kWvrqdBVPoUNy/tQ8mYc
 nzJJ63ng3tHhnwHXZOu8hL4nqwlYHRa9eeglXYhBqja4ZvIvCEqSmEukfivk+DlIgVoOAJbh
 qIWgvr3SIEuR6ayY3f5j0f2ejUMYlYYnKdiHXFlF9uXm1ELrb0YX4GMHz7QnRmxvcmlhbiBG
 YWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+iGYEExECACYCGyMGCwkIBwMCBBUCCAME
 FgIDAQIeAQIXgAUCVF/S8QUJHlwd3wAKCRBhV5kVtWN2DvCVAJ4u4/bPF4P3jxb4qEY8I2gS
 6hG0gACffNWlqJ2T4wSSn+3o7CCZNd7SLSC5BA0ESM+4EhAQAL/o09boR9D3Vk1Tt7+gpYr3
 WQ6hgYVON905q2ndEoA2J0dQxJNRw3snabHDDzQBAcqOvdi7YidfBVdKi0wxHhSuRBfuOppu
 pdXkb7zxuPQuSveCLqqZWRQ+Cc2QgF7SBqgznbe6Ngout5qXY5Dcagk9LqFNGhJQzUGHAsIs
 hap1f0B1PoUyUNeEInV98D8Xd/edM3mhO9nRpUXRK9Bvt4iEZUXGuVtZLT52nK6Wv2EZ1TiT
 OiqZlf1P+vxYLBx9eKmabPdm3yjalhY8yr1S1vL0gSA/C6W1o/TowdieF1rWN/MYHlkpyj9c
 Rpc281gAO0AP3V1G00YzBEdYyi0gaJbCEQnq8Vz1vDXFxHzyhgGz7umBsVKmYwZgA8DrrB0M
 oaP35wuGR3RJcaG30AnJpEDkBYHznI2apxdcuTPOHZyEilIRrBGzDwGtAhldzlBoBwE3Z3MY
 31TOpACu1ZpNOMysZ6xiE35pWkwc0KYm4hJA5GFfmWSN6DniimW3pmdDIiw4Ifcx8b3mFrRO
 BbDIW13E51j9RjbO/nAaK9ndZ5LRO1B/8Fwat7bLzmsCiEXOJY7NNpIEpkoNoEUfCcZwmLrU
 +eOTPzaF6drw6ayewEi5yzPg3TAT6FV3oBsNg3xlwU0gPK3v6gYPX5w9+ovPZ1/qqNfOrbsE
 FRuiSVsZQ5s3AAMFD/9XjlnnVDh9GX/r/6hjmr4U9tEsM+VQXaVXqZuHKaSmojOLUCP/YVQo
 7IiYaNssCS4FCPe4yrL4FJJfJAsbeyDykMN7wAnBcOkbZ9BPJPNCbqU6dowLOiy8AuTYQ48m
 vIyQ4Ijnb6GTrtxIUDQeOBNuQC/gyyx3nbL/lVlHbxr4tb6YkhkO6shjXhQh7nQb33FjGO4P
 WU11Nr9i/qoV8QCo12MQEo244RRA6VMud06y/E449rWZFSTwGqb0FS0seTcYNvxt8PB2izX+
 HZA8SL54j479ubxhfuoTu5nXdtFYFj5Lj5x34LKPx7MpgAmj0H7SDhpFWF2FzcC1bjiW9mjW
 HaKaX23Awt97AqQZXegbfkJwX2Y53ufq8Np3e1542lh3/mpiGSilCsaTahEGrHK+lIusl6mz
 Joil+u3k01ofvJMK0ZdzGUZ/aPMZ16LofjFA+MNxWrZFrkYmiGdv+LG45zSlZyIvzSiG2lKy
 kuVag+IijCIom78P9jRtB1q1Q5lwZp2TLAJlz92DmFwBg1hyFzwDADjZ2nrDxKUiybXIgZp9
 aU2d++ptEGCVJOfEW4qpWCCLPbOT7XBr+g/4H3qWbs3j/cDDq7LuVYIe+wchy/iXEJaQVeTC
 y5arMQorqTFWlEOgRA8OP47L9knl9i4xuR0euV6DChDrguup2aJVU4hPBBgRAgAPAhsMBQJU
 X9LxBQkeXB3fAAoJEGFXmRW1Y3YOj4UAn3nrFLPZekMeqX5aD/aq/dsbXSfyAKC45Go0YyxV
 HGuUuzv+GKZ6nsysJ7kCDQRXG8fwARAA6q/pqBi5PjHcOAUgk2/2LR5LjjesK50bCaD4JuNc
 YDhFR7Vs108diBtsho3w8WRd9viOqDrhLJTroVckkk74OY8r+3t1E0Dd4wHWHQZsAeUvOwDM
 PQMqTUBFuMi6ydzTZpFA2wBR9x6ofl8Ax+zaGBcFrRlQnhsuXLnM1uuvS39+pmzIjasZBP2H
 UPk5ifigXcpelKmj6iskP3c8QN6x6GjUSmYx+xUfs/GNVSU1XOZn61wgPDbgINJd/THGdqiO
 iJxCLuTMqlSsmh1+E1dSdfYkCb93R/0ZHvMKWlAx7MnaFgBfsG8FqNtZu3PCLfizyVYYjXbV
 WO1A23riZKqwrSJAATo5iTS65BuYxrFsFNPrf7TitM8E76BEBZk0OZBvZxMuOs6Z1qI8YKVK
 UrHVGFq3NbuPWCdRul9SX3VfOunr9Gv0GABnJ0ET+K7nspax0xqq7zgnM71QEaiaH17IFYGS
 sG34V7Wo3vyQzsk7qLf9Ajno0DhJ+VX43g8+AjxOMNVrGCt9RNXSBVpyv2AMTlWCdJ5KI6V4
 KEzWM4HJm7QlNKE6RPoBxJVbSQLPd9St3h7mxLcne4l7NK9eNgNnneT7QZL8fL//s9K8Ns1W
 t60uQNYvbhKDG7+/yLcmJgjF74XkGvxCmTA1rW2bsUriM533nG9gAOUFQjURkwI8jvMAEQEA
 AYkCaAQYEQIACQUCVxvH8AIbAgIpCRBhV5kVtWN2DsFdIAQZAQIABgUCVxvH8AAKCRCH0Jac
 RAcHBIkHD/9nmfog7X2ZXMzL9ktT++7x+W/QBrSTCTmq8PK+69+INN1ZDOrY8uz6htfTLV9+
 e2W6G8/7zIvODuHk7r+yQ585XbplgP0V5Xc8iBHdBgXbqnY5zBrcH+Q/oQ2STalEvaGHqNoD
 UGyLQ/fiKoLZTPMur57Fy1c9rTuKiSdMgnT0FPfWVDfpR2Ds0gpqWePlRuRGOoCln5GnREA/
 2MW2rWf+CO9kbIR+66j8b4RUJqIK3dWn9xbENh/aqxfonGTCZQ2zC4sLd25DQA4w1itPo+f5
 V/SQxuhnlQkTOCdJ7b/mby/pNRz1lsLkjnXueLILj7gNjwTabZXYtL16z24qkDTI1x3g98R/
 xunb3/fQwR8FY5/zRvXJq5us/nLvIvOmVwZFkwXc+AF+LSIajqQz9XbXeIP/BDjlBNXRZNdo
 dVuSU51ENcMcilPr2EUnqEAqeczsCGpnvRCLfVQeSZr2L9N4svNhhfPOEscYhhpHTh0VPyxI
 pPBNKq+byuYPMyk3nj814NKhImK0O4gTyCK9b+gZAVvQcYAXvSouCnTZeJRrNHJFTgTgu6E0
 caxTGgc5zzQHeX67eMzrGomG3ZnIxmd1sAbgvJUDaD2GrYlulfwGWwWyTNbWRvMighVdPkSF
 6XFgQaosWxkV0OELLy2N485YrTr2Uq64VKyxpncLh50e2RnyAJ9qfUATKC9NgZjRvBztfqy4
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <2d00043f-3b17-3be2-98b0-e7c8c2215b94@gmail.com>
Date: Sun, 1 Dec 2019 13:26:09 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CACRpkdbErhbNkQMK8haf=ZdSoLO55ke2FxErDJeknRKGVB6S0A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_132613_379518_EFB91103 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Pawel Dembicki <paweldembicki@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpPbiAxMS8yNy8yMDE5IDc6MjcgQU0sIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4gT24gV2VkLCBO
b3YgMjcsIDIwMTkgYXQgNDowNSBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90
ZToKPiAKPj4gd2hhdCdzIHRoZSBzdGF0ZSBvZiB0aGlzPyBJdCdzIG5vdCBjbGVhciBmcm9tIHRo
ZSBkaXNjdXNzaW9uLCB0aGFua3MuCj4gCj4gU2FkbHkgSSdtIGFzIGNvbmZ1c2VkIGFzIHlvdSBh
cmUuIEknbSBzY3JhdGNoaW5nIG15IGhlYWQgYWJvdXQKPiB3aGF0IHRvIGRvLiBJIHN1c3BlY3Qg
dGhlIHByb2JsZW0gd2lsbCBvbmx5IGdldCBiaWdnZXIgYXMgbW9yZQo+IERTQSBzd2l0Y2hlcyBh
cHBlYXIgaW4gdGhlIExpbnV4IGtlcm5lbC4KCkl0IHNlZW1zIHRvIG1lIHRoYXQgd2UgYXJlIHN0
aWxsIG1pc3Npbmcgc29tZXRoaW5nIGNyaXRpY2FsIGZvciB1c2Vycwp3aGljaCBpcyBjb252ZXJ0
aW5nIGEgc3dpdGNoIGNvbmZpZ3VyYXRpb24gc3ludGF4LCBzdWNoIGFzOgoKY29uZmlnIHN3aXRj
aAogICAgICAgIG9wdGlvbiBuYW1lICdzd2l0Y2gwJwogICAgICAgIG9wdGlvbiByZXNldCAnMScK
ICAgICAgICBvcHRpb24gZW5hYmxlX3ZsYW4gJzEnCgpjb25maWcgc3dpdGNoX3ZsYW4KICAgICAg
ICBvcHRpb24gZGV2aWNlICdzd2l0Y2gwJwogICAgICAgIG9wdGlvbiB2bGFuICcxJwogICAgICAg
IG9wdGlvbiBwb3J0cyAnMSAyIDMgNCA1dCcKCmNvbmZpZyBzd2l0Y2hfdmxhbgogICAgICAgIG9w
dGlvbiBkZXZpY2UgJ3N3aXRjaDAnCiAgICAgICAgb3B0aW9uIHZsYW4gJzInCiAgICAgICAgb3B0
aW9uIHBvcnRzICcwIDV0JwoKaW50byBhbiBhcHByb3ByaWF0ZSBzdWNjZXNzaW9uIG9mIGlwcm91
dGUyIGNhbGxzIChwb3NzaWJseSB3aXRoIGEgVkxBTgphd2FyZSBicmlkZ2UpLgoKSXMgYW55b25l
IHdvcmtpbmcgb24gYnJpZGdpbmcgdGhhdCBnYXAgYXQgdGhpcyBwb2ludD8KLS0gCkZsb3JpYW4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
