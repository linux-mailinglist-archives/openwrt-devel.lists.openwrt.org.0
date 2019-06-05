Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3A63655A
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 22:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/7rgi3TpI/iCOdE34jw0wCPHqR2yTK69CXJDVttU9aY=; b=bKfAJS0oufGOAMrVA1yzYS6ov
	kC0b+o7rVmGW17HkW8XmOhTJGuSf9p+I6BIkZ3dRuA4cLx3WrNvO1L+HMfpJLexM46S9VLGuMQXFs
	y9wbW/PFGW5E0Ro9ntLtH8Dfr2yol9NT/7I2FNBth4jtRGb1eWxUPBwOESf8T3FS43gfkTPE+tzwJ
	rTpTd2vrwD0O4+ZsuTW7xah4IZUA2G+ty5qttLt2QX2hY0rkuqjbeF/6qR/1IIEUo8Qwvs1jeJkLJ
	u7g7iWoW9jvL9Ic64yYhkB7ueBRgjbGgt/uOVJnHa96J+jHUOPspR5xiyKXB3woUEkFQnRrXImqcM
	s3+S2oL/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcRe-0001of-Lf; Wed, 05 Jun 2019 20:23:38 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcRX-0001o7-E4
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 20:23:32 +0000
Received: by mail-ot1-x341.google.com with SMTP id 107so1969662otj.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Jun 2019 13:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UosD/NHotKiJkVk1AhyRVuMUEuSgaTzMsS7FjYwKMQU=;
 b=I6/ACFWBX1iBnkcIBt9fnXF9+yC0P85x5SxCy4T8HJYE+lImogPFcCJmBzzih3rPqT
 ry4pm4LcWAv2RucmLYywHgDP1XJg+7G2BDi/FJMQyY79Eyv9zNFUg5Y22zD9q1LIzS+F
 ft/GLchjHnjm/kFmiBFS5mP/tFQXMPDiSbnUdJ/0QmllbZiVElMu28ZIpTjhvLxtHA03
 jElo34DyhT+t2xa2c90HfhjPkJNPHXsIASUrwFYECMPQUOtNXK4bwh5OLEbULSFJu88T
 gjjfo7wtRUgS2QC2CnAsP0AvdlHt5FLDwC+6M3AI8somxkrcYE7MeMSRoUxg3HTpQKlI
 0BjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UosD/NHotKiJkVk1AhyRVuMUEuSgaTzMsS7FjYwKMQU=;
 b=SD16WMDmzdKJVzit0/UpOiss96oh0n+qza5JtxMAjXKW0AIFIzy71HHui0TkzqU8Rq
 F31ikB/FfjDm5hIU1Y6qVITunbJMdr/bjsZcVxkpVYViElLRG/XUJPl++awTHq8tibHo
 68//uI84RIiLMM+6P+9E7pPLCYCd1nIeufBFV6975p0SNund9zMaBysQrvjdqUT9uZ4Z
 K60gwt10Sn9WTzMQN+d65Z2nSWiJARwaThtQOD/GbYJM9Hokef4aWeYqVWDIZDRVQn99
 O1hIRTb/2IGd5etB/OvFIBmFzxpn96mjP4ZCkyi1A/jXsjQKhIyBK8FMvGcqazfIwiZW
 1PKg==
X-Gm-Message-State: APjAAAXgVCpa6z/GKLgsyTqiIoJ5vnx0MXkYOgIYEtj4dPZrBPfXU7Lk
 x9KJj0rUHEqSaQoUYToTIPnBAIBxI2XzHKuumQKShbbC
X-Google-Smtp-Source: APXvYqz/KVjaHLnftp1HiwWg2ez7tClqC5mqCv6Idu3OshTG/xQH4mepWGGFrleneRVUAB4cUASVRzv9CSuE1ZT2lHw=
X-Received: by 2002:a05:6830:117:: with SMTP id
 i23mr6569797otp.47.1559766207347; 
 Wed, 05 Jun 2019 13:23:27 -0700 (PDT)
MIME-Version: 1.0
References: <1559653541-26682-1-git-send-email-ynezz@true.cz>
In-Reply-To: <1559653541-26682-1-git-send-email-ynezz@true.cz>
From: Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 5 Jun 2019 22:23:13 +0200
Message-ID: <CAAd0S9CEPJqQXJ6OhW9_597ig92Typb7s0L5HwpLm-CU=ska6g@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: multipart/mixed; boundary="000000000000b8e2f6058a995e80"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_132331_472750_6C759FCE 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix
 always missing first event
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--000000000000b8e2f6058a995e80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 4, 2019 at 3:05 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>
> Commit afc056d7dc83 ("gpio-button-hotplug: support interrupt
> properties") changed the gpio-keys interrupt handling logic in a way,
> that it always misses first event, which causes issues with rc.button
> scripts, so this patch restores the previous behaviour.
>
> Cc: Christian Lamparter <chunkeey@gmail.com>
> Fixes: afc056d7dc83 ("gpio-button-hotplug: support interrupt properties")
> Reported-by: Kristian Evensen <kristian.evensen@gmail.com>
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> ---
>
> diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c=
 b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> index f429f8c0271f..81697e9c4cf6 100644
> --- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> +++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> @@ -344,10 +344,7 @@ static void gpio_keys_irq_work_func(struct work_stru=
ct *work)
>
>         if (state !=3D bdata->last_state) {
>                 unsigned int type =3D bdata->b->type ?: EV_KEY;
> -
> -               if (bdata->last_state !=3D -1 || type =3D=3D EV_SW)
> -                       button_hotplug_event(bdata, type, state);
> -
> +               button_hotplug_event(bdata, type, state);
>                 bdata->last_state =3D state;
>         }
>  }

Thanks. initially I ran into issues with the WNDR4700 and WNDAP630 when
I was testing the interrupt-driven gpio-keys. On boot-up, they would produc=
e
spurious ghost key presses when gpio-keys enabled the interrupt for the fir=
st
time. I'll test this again (don't have the HW at the moment... but I will o=
n
Sunday),


Note: If we want to revert to the previous behavior (afc056d7dc83) and clos=
er
to upstream gpio_keys.c. we have to drop even more.
@Kristian Evensen, can you please check if the following patch would also
resolve the issues you have been experiencing?

I had to attach the patch as a file since gmail's webmail interface now see=
ms to
eat all the tabs. I hope this still gets through.

--000000000000b8e2f6058a995e80
Content-Type: text/x-patch; charset="US-ASCII"; name="gpio-keys-back-to-stock.diff"
Content-Disposition: attachment; filename="gpio-keys-back-to-stock.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_jwjoftra0>
X-Attachment-Id: f_jwjoftra0

ZGlmZiAtLWdpdCBhL3BhY2thZ2Uva2VybmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3JjL2dwaW8t
YnV0dG9uLWhvdHBsdWcuYyBiL3BhY2thZ2Uva2VybmVsL2dwaW8tYnV0dG9uLWhvdHBsdWcvc3Jj
L2dwaW8tYnV0dG9uLWhvdHBsdWcuYwppbmRleCAxMWM5MTRkNGVmLi42ZGU4ZjU2Y2RmIDEwMDY0
NAotLS0gYS9wYWNrYWdlL2tlcm5lbC9ncGlvLWJ1dHRvbi1ob3RwbHVnL3NyYy9ncGlvLWJ1dHRv
bi1ob3RwbHVnLmMKKysrIGIvcGFja2FnZS9rZXJuZWwvZ3Bpby1idXR0b24taG90cGx1Zy9zcmMv
Z3Bpby1idXR0b24taG90cGx1Zy5jCkBAIC0zNDgsMTYgKzM0OCw5IEBAIHN0YXRpYyB2b2lkIGdw
aW9fa2V5c19pcnFfd29ya19mdW5jKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIHsKIAlzdHJ1
Y3QgZ3Bpb19rZXlzX2J1dHRvbl9kYXRhICpiZGF0YSA9IGNvbnRhaW5lcl9vZih3b3JrLAogCQlz
dHJ1Y3QgZ3Bpb19rZXlzX2J1dHRvbl9kYXRhLCB3b3JrLndvcmspOwotCWludCBzdGF0ZSA9IGdw
aW9fYnV0dG9uX2dldF92YWx1ZShiZGF0YSk7CiAKLQlpZiAoc3RhdGUgIT0gYmRhdGEtPmxhc3Rf
c3RhdGUpIHsKLQkJdW5zaWduZWQgaW50IHR5cGUgPSBiZGF0YS0+Yi0+dHlwZSA/OiBFVl9LRVk7
Ci0KLQkJaWYgKGJkYXRhLT5sYXN0X3N0YXRlICE9IC0xIHx8IHR5cGUgPT0gRVZfU1cpCi0JCQli
dXR0b25faG90cGx1Z19ldmVudChiZGF0YSwgdHlwZSwgc3RhdGUpOwotCi0JCWJkYXRhLT5sYXN0
X3N0YXRlID0gc3RhdGU7Ci0JfQorCWJ1dHRvbl9ob3RwbHVnX2V2ZW50KGJkYXRhLCBiZGF0YS0+
Yi0+dHlwZSA/OiBFVl9LRVksCisJCQkgICAgIGdwaW9fYnV0dG9uX2dldF92YWx1ZShiZGF0YSkp
OwogfQogCiBzdGF0aWMgaXJxcmV0dXJuX3QgYnV0dG9uX2hhbmRsZV9pcnEoaW50IGlycSwgdm9p
ZCAqX2JkYXRhKQo=
--000000000000b8e2f6058a995e80
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--000000000000b8e2f6058a995e80--

